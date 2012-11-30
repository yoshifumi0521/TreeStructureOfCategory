# coding: utf-8

#カテゴリーのシードデータを埋めるためのファイル

#一番上の階層のデータ
TopOfcategories = Category.find_or_initialize_by_id(1)
TopOfcategories.name = "全ジャンル"
TopOfcategories.parent_id = nil
TopOfcategories.save




#2番目のジャンルをつくる。ITというジャンルをつくる。
ITOfcategories = Category.find_or_initialize_by_id(2)
ITOfcategories.name = "IT"
ITOfcategories.parent_id = 1
ITOfcategories.save

#ITというジャンルの中の項目をいくるかつくる。
IT1 = Category.find_or_initialize_by_id(3)
IT1.name = "サーバーエンジニア"
IT1.parent_id = 2
IT1.save

IT2 = Category.find_or_initialize_by_id(4)
IT2.name = "フロントエンジニア"
IT2.parent_id = 2
IT2.save

IT3 = Category.find_or_initialize_by_id(5)
IT3.name = "デザイナー"
IT3.parent_id = 2
IT3.save






#2番目のジャンルをつくる。マーケティングというジャンルをつくる。
MarketingOfcategories = Category.find_or_initialize_by_id(6)
MarketingOfcategories.name = "マーケティング"
MarketingOfcategories.parent_id = 1
MarketingOfcategories.save

#マーケティングのジャンルの中の項目をいれる。
Marketing1 = Category.find_or_initialize_by_id(7)
Marketing1.name = "マーケティングリサーチ"
Marketing1.parent_id = 6
Marketing1.save


Marketing2 = Category.find_or_initialize_by_id(8)
Marketing2.name = "広告宣伝"
Marketing2.parent_id = 6
Marketing2.save

Marketing3 = Category.find_or_initialize_by_id(9)
Marketing3.name = "商品企画"
Marketing3.parent_id = 6
Marketing3.save




#3番目のジャンルをつくる。会計というジャンルをつくる。
AccountingOfcategories = Category.find_or_initialize_by_id(10)
AccountingOfcategories.name = "会計"
AccountingOfcategories.parent_id = 1
AccountingOfcategories.save

#会計のジャンルの項目をうめる。
Accounting1 = Category.find_or_initialize_by_id(11)
Accounting1.name = "経理"
Accounting1.parent_id = 10
Accounting1.save

Accounting2 = Category.find_or_initialize_by_id(12)
Accounting2.name = "財務"
Accounting2.parent_id = 10
Accounting2.save

Accounting3 = Category.find_or_initialize_by_id(13)
Accounting3.name = "会計"
Accounting3.parent_id = 10
Accounting3.save
























