#coding: utf-8
#カテゴリーのヘルパー
module CategoriesHelper

  #optionの配列をかえす。
  def option(parents)
    
    options = []
    parents.each do |parent|
      options << [parent.name ,parent.id] 
    end
    return options

  end




end
