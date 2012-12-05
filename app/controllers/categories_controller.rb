#coding: utf-8
#カテゴリーのコントローラー
class CategoriesController < ApplicationController
  
  def index
  
    @categories = Category.all
    @parents = @categories[0].children
    logger.debug(@parents.inspect)

  end

  def new

    #パラメーターを値を取り出す。
    type = params[:type]
    if type == "parent"
      #親カテゴリーの追加だったする処理。
      @parent = Category.new
      @parent.parent_id = 1

      return
    elsif type == "children"
      #子カテゴリーの追加の処理。



    else
      #エラー処理を起こす。

      return
    end

  
  end

  def create
  
  
  
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
