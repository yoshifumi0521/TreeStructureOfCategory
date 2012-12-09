#coding: utf-8
#Userコントローラー
class User < ActiveRecord::Base
  attr_accessible :advise, :name, :uid, :use

  #中間モデルTaggingをつかって、Categoryモデルと多対多の関係を結ぶ。
  has_many :taggings
  has_many :categories,:through => :taggings,source: :category


  def filtertext(id)
    logger.debug(id) 

  end



end
