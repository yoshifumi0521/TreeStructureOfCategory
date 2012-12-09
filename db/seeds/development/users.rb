# coding: utf-8

#エキスパートのシードデータを埋めるためのファイル

#カテゴリーのオブジェクトの変数をつくる。
@c1 = Category.find_by_name("VC")
@c2 = Category.find_by_name("スタートアップ")
@c3 = Category.find_by_name("プロダクト開発")
@c4 = Category.find_by_name("SE")
@c5 = Category.find_by_name("SI")
@c6 = Category.find_by_name("リテール営業")
@c7 = Category.find_by_name("起業")
@c8 = Category.find_by_name("マーケティングプランナー")
@c9 = Category.find_by_name("ウェブアナリスト")


@c10 = Category.find_by_name("インターネット")
@c11 = Category.find_by_name("イントラネット")
@c12 = Category.find_by_name("EC/物販")
@c13 = Category.find_by_name("製造業")
@c14 = Category.find_by_name("マーケットプレイス")
@c15 = Category.find_by_name("人材")


@c16 = Category.find_by_name("コンテンツマーケティング")
@c17 = Category.find_by_name("人材採用")
@c18 = Category.find_by_name("ビジネスモデル開発")
@c19 = Category.find_by_name("ユーザーヒヤリング")
@c20 = Category.find_by_name("フラットな組織の管理")
@c21 = Category.find_by_name("KPIとコントロール")

@c22 = Category.find_by_name("日本")
@c23 = Category.find_by_name("北米")
@c24 = Category.find_by_name("東南アジア")



#エキスパート1のデータ。名前taro。
@expert1= User.find_or_initialize_by_uid("1")
@expert1.name = "taro"
@expert1.advice = true
@expert1.save

@c3.experts << @expert1
@c4.experts << @expert1
@c6.experts << @expert1
@c13.experts << @expert1
@c14.experts << @expert1


#エキスパート2のデータ。名前jiro。
@expert2= User.find_or_initialize_by_uid("2")
@expert2.name = "jiro"
@expert2.advice = true
@expert2.save

@c5.experts << @expert2
@c6.experts << @expert2
@c17.experts << @expert2
@c18.experts << @expert2
@c19.experts << @expert2



#エキスパート3のデータ。名前sato。
@expert3 = User.find_or_initialize_by_uid("3")
@expert3.name = "sato"
@expert3.advice = true
@expert3.save

@c16.experts << @expert3
@c17.experts << @expert3
@c20.experts << @expert3
@c21.experts << @expert3
@c22.experts << @expert3



#エキスパート4のデータ。名前yu。
@expert4 = User.find_or_initialize_by_uid("4")
@expert4.name = "yu"
@expert4.advice = true
@expert4.save

@c1.experts << @expert4
@c2.experts << @expert4
@c7.experts << @expert4
@c8.experts << @expert4
@c9.experts << @expert4



#エキスパート5のデータ。名前akira。
@expert5 = User.find_or_initialize_by_uid("5")
@expert5.name = "akira"
@expert5.advice = true
@expert5.save

@c12.experts << @expert5
@c13.experts << @expert5
@c14.experts << @expert5
@c18.experts << @expert5
@c19.experts << @expert5



#エキスパート6のデータ。名前rio。
@expert6 = User.find_or_initialize_by_uid("6")
@expert6.name = "akira"
@expert6.advice = true
@expert6.save

@c4.experts << @expert6
@c5.experts << @expert6
@c20.experts << @expert6
@c22.experts << @expert6
@c23.experts << @expert6



#エキスパート7のデータ。名前mika。
@expert7 = User.find_or_initialize_by_uid("7")
@expert7.name = "mika"
@expert7.advice = true
@expert7.save

@c13.experts << @expert7
@c16.experts << @expert7
@c17.experts << @expert7
@c20.experts << @expert7
@c23.experts << @expert7



#エキスパート8のデータ。名前kaori。
@expert8 = User.find_or_initialize_by_uid("8")
@expert8.name = "maori"
@expert8.advice = true
@expert8.save

@c6.experts << @expert8
@c17.experts << @expert8
@c18.experts << @expert8
@c19.experts << @expert8
@c20.experts << @expert8


#エキスパート9のデータ。名前eri。
@expert9 = User.find_or_initialize_by_uid("9")
@expert9.name = "eri"
@expert9.advice = true
@expert9.save

@c1.experts << @expert9
@c2.experts << @expert9
@c3.experts << @expert9
@c8.experts << @expert9
@c9.experts << @expert9



#エキスパート10のデータ。名前nippe。
@expert10 = User.find_or_initialize_by_uid("10")
@expert10.name = "eri"
@expert10.advice = true
@expert10.save

@c4.experts << @expert10
@c5.experts << @expert10
@c6.experts << @expert10
@c12.experts << @expert10
@c13.experts << @expert10



#エキスパート11のデータ。名前jin。
@expert11 = User.find_or_initialize_by_uid("11")
@expert11.name = "jin"
@expert11.advice = true
@expert11.save

@c2.experts << @expert11
@c3.experts << @expert11
@c13.experts << @expert11
@c14.experts << @expert11
@c15.experts << @expert11



#エキスパート12のデータ。名前emi。
@expert12 = User.find_or_initialize_by_uid("12")
@expert12.name = "emi"
@expert12.advice = true
@expert12.save

@c4.experts << @expert12
@c5.experts << @expert12
@c8.experts << @expert12
@c9.experts << @expert12
@c10.experts << @expert12


#エキスパート13のデータ。名前kei。
@expert13 = User.find_or_initialize_by_uid("13")
@expert13.name = "emi"
@expert13.advice = true
@expert13.save

@c17.experts << @expert13
@c18.experts << @expert13
@c20.experts << @expert13
@c21.experts << @expert13
@c23.experts << @expert13



#エキスパート14のデータ。名前su。
@expert14 = User.find_or_initialize_by_uid("14")
@expert14.name = "emi"
@expert14.advice = true
@expert14.save

@c14.experts << @expert14
@c15.experts << @expert14
@c16.experts << @expert14
@c17.experts << @expert14
@c20.experts << @expert14


















