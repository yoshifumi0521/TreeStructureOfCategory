# coding: utf-8

#エキスパートのシードデータを埋めるためのファイル

#エキスパート1のデータ。名前taro。
@expert1= User.find_or_initialize_by_uid("1")
@expert1.name = "taro"
@expert1.advice = true

@vv = Category.find_by_name("VC")
@vc << @expert1
@internet = Category.find_or_name("インターネット")
@internet << @expert1







































