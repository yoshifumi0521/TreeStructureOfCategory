#coding: utf-8
#カテゴリーのコントローラー
class CategoriesController < ApplicationController
  
  def index
  
    @categories = Category.all
    @parents = @categories[0].children

  end

  #カテゴリーや項目をプラスするメソッド
  def new
    
    #パラメーターを値を取り出す。
    type = params[:type]
    if type == "parent"
       
      #親カテゴリーの追加だったする処理。
      @parent = Category.new
      @parent.parent_id = 1
    
    elsif type == "children"
      #子カテゴリーの追加の処理。
      @children = Category.new 
      @parents = Category.where(:parent_id => 1)


    else
      #エラー処理を起こす。

      return
    end

  
  end

  def create

    type = params["type"]
    if type == "parent"
      
      #@parentにハッシュをいれる。
      @parent = Category.new()
      @parent.parent_id = 1
      @parent.name = params[:category][:name]


      if @parent.save
        #categoriesのindexに戻る。
        redirect_to :categories
      else
        #newアクションに戻る
        render "new" 
      end

    elsif type == "children"




    end
  
  
  end

  def show
  
  
  
  end

  def edit
  
  
  
  end

  def update
  
  
  
  end

  def destroy
  
  
  
  
  end







end
