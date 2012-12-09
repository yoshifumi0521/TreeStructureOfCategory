#coding: utf-8
module ExpertsHelper

  #カテゴリーの","で区切った文字列を返すメソッド
  def categorytext(expert)
    #カテゴリーの名前だけ取り出す。
    @categorynames = expert.categories.map{|m| m.name}
    
    @text = ""
    @categorynames.each do |name|
      @text << name +","
    end
    #最後のコンマを削除する。
    @text.chop!
    return @text
  end






end
