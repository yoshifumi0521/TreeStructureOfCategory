# coding: utf-8

#カテゴリーのシードデータを埋めるためのファイル

#一番上のジャンルのデータ
TopOfcategories = Category.find_or_initialize_by_id(1)
TopOfcategories.name = "全ジャンル"
TopOfcategories.parent_id = nil
TopOfcategories.save







