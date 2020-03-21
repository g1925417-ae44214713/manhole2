# 追加したレコードに画像を追加
Post.all.each do |p|
  # 対応する画像があるか確認
  unless p.image.attached?
    # 画像をattachメソッドで登録(登録するデータはpathを指定, filenameでファイルを選択)
    filename = Dir.open("db/fixtures/images/post",&:to_a).sample
    p.image.attach(io: File.open("db/fixtures/images/post/#{filename}"), filename: "#{filename}")
  end
end