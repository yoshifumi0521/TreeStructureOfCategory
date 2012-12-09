#coding: utf-8
#カテゴリーモデルのモデル
class Category < ActiveRecord::Base
  attr_accessible :name, :parent_id

  validates :name, presence: true

  #ツリー構造にするための記述
  has_many :children,:class_name => "Category",:foreign_key => :parent_id 
  belongs_to :parent,:class_name => "Category",:foreign_key => :parent_id

  #rails3_acts_as_paranoidライブラリを使うための処理。
  acts_as_paranoid

  #中間モデルTaggingをつかって、Userモデルと多対多の関係をつくる。
  has_many :taggings
  #sourceを使って、名前をexpertsにして、Category.expertsでデータを取り出せるようにする。
  has_many :experts,:through => :taggings, source: :user




end
