# coding: utf-8

#カテゴリーのシードデータを埋めるためのファイル

#上位階層のデータ
@TopOfcategories = Category.find_or_initialize_by_name("全ジャンル")
@TopOfcategories.parent_id = nil
@TopOfcategories.save


#①　職種/役職というジャンルをつくる。
@topofposition = Category.find_or_initialize_by_name("職種/役職")
@topofposition.parent_id = 1
@topofposition.save


#職種/役職というジャンルの項目をいれる。
positions = ["VC","スタートアップ","プロダクト開発","SE","SI","リテール営業","起業","マーケティングプランナー","ウェブアナリスト"]
#ループでまわす。
positions.each do |position|
  p = Category.find_or_initialize_by_name(position)
  p.parent_id = @topofposition.id
  p.save
end


































