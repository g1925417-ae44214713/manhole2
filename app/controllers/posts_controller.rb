class PostsController < ApplicationController

  before_action :set_post, only: [ :edit, :update, :destroy]

  before_action :authenticate_user!

  def index
  @posts = Post.with_attached_image.order(created_at: :desc).page(params[:page]).per(8).includes(user: [avatar_attachment: :blob])
  end

  def new
    @post = Post.new # フォーム用の空のインスタンスを生成する。
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to @post, notice: "投稿を登録しました。"
    else
      render :new
    end
  end

  def show
    @post = Post.with_attached_image.includes(user: [ avatar_attachment: :blob ]).find(params[:id])
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "投稿を更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: "投稿を削除しました。"
  end

  private

  def post_params # ストロングパラメータを定義する
    params.require(:post).permit(:place, :latitude, :longitude, :date, :caption, :image)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
