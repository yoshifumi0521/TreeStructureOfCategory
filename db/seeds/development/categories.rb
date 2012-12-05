# coding: utf-8

#カテゴリーのシードデータを埋めるためのファイル

#上位階層のデータ
@TopOfcategories = Category.find_or_initialize_by_name("全ジャンル")
@TopOfcategories.parent_id = nil
@TopOfcategories.save




# ① 職種/役職というジャンルをつくる。
@topofposition = Category.find_or_initialize_by_name("職種/役職")
@topofposition.parent_id = @TopOfcategories.id 
@topofposition.save


#職種/役職というジャンルの項目をいれる。
positions = ["VC","スタートアップ","プロダクト開発","SE","SI","リテール営業","起業","マーケティングプランナー","ウェブアナリスト"]
#ループでまわす。
positions.each do |position|
  p = Category.find_or_initialize_by_name(position)
  p.parent_id = @topofposition.id
  p.save
end





# ②　業界/業種というジャンルをつくる。
@topofindustries = Category.find_or_initialize_by_name("業界/業種")
@topofindustries.parent_id = @TopOfcategories.id
@topofindustries.save

#業界/業種というジャンルに項目をいれる。
industries = ["インターネット","イントラネット","EC/物販","製造業","マーケットプレイス","人材"]
industries.each do |industry|
  i = Category.find_or_initialize_by_name(industry)
  i.parent_id = @topofindustries.id
  i.save
end




# ③　スキルというジャンルをつくる。
@topofskills = Category.find_or_initialize_by_name("スキル")
@topofskills.parent_id = @TopOfcategories.id
@topofskills.save

#スキルをいうジャンルの項目をいれる。
skills = ["コンテンツマーケティング","人材採用","ビジネスモデル開発","ユーザーヒヤリング","フラットな組織の管理","KPIとコントロール"]
skills.each do |skill|
  s = Category.find_or_initialize_by_name(skill)
  s.parent_id = @topofskills.id
  s.save
end




#　④　地域というジャンルをつくる。
@topoflocals = Category.find_or_initialize_by_name("地域")
@topoflocals.parent_id = @TopOfcategories.id
@topoflocals.save

#地域というジャンルの項目をいれる。
locals = ["日本","北米","東南アジア"]
locals.each do |local|
  l = Category.find_or_initialize_by_name(local)
  l.parent_id = @topoflocals.id
  l.save
end


































