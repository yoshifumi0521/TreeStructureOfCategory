#coding: utf-8
#カテゴリーモデルのモデル
class Category < ActiveRecord::Base
  attr_accessible :name, :parent_id

  validates :name, presence: true

  #ツリー構造にするための記述
  has_many :children,:class_name => "Category",:foreign_key => :parent_id 
  belongs_to :parent,:class_name => "Category",:foreign_key => :parent_id






end
