#coding: utf-8
#カテゴリーのコントローラー
class CategoriesController < ApplicationController
  
  def index
  
    @categories = Category.all
    @parents = @categories[0].children
  
  end

  def new
  
  
  
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
