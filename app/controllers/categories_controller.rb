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

     
    end

  
  end

  def create

    type = params["type"]
    if type == "parent"
      
      #@parentにハッシュをいれる。
      @parent = Category.new
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

      @children = Category.new
      @children.parent_id = params[:category][:parent_id]
      @children.name = params[:category][:name]

      if @children.save
        #categoriesのindexに戻る。
        redirect_to :categories
      else
        render "new"
      end

    end
  
  
  end

  def show
  
  
  
  end

  #親カテゴリーや、子カテゴリーを編集するとき。
  def edit

    #親カテゴリーのオブジェクトを取得。 
    @parents = Category.find(1).children
    
    #親カテゴリーか子カテゴリーか？を判定する。
    @flag = false
    #idを取得する。この時にstringからintegerにする。
    @id = params[:id].to_i
    #親カテゴリーの編集か、子カテゴリーの編集かを判定する。
    @parents.each do |parent|
      if parent[:id] == @id 
        @flag = true 
        break #ループをぬける。
      end
    end

    if @flag
      #親カテゴリーだったら場合の処理。
      @parent =Category.find(@id) 

    else
      #子カテゴーだった場合のの処理。
      @children = Category.find(@id)
    
    end
  
  
  end

  def update
 
    @type = params[:type] 
    if @type == "parent"
      @parent = Category.find(params[:id])
      @parent.name = params[:category][:name]
      
      if @parent.save
        #保存されたらする処理。
        redirect_to :categories
      else
        render "edit"
      end

    elsif @type == "children"
      @children =Category.find(params[:id])
      @children.name = params[:category][:name]
      @children.parent_id = params[:category][:parent]

      if @children.save
        #保存されたらする処理。
        redirect_to :categories
      else
        render "edit"
      end

    else
      #エラー処理を起こす。

    end

  end

  #親カテゴリーと子カテゴリーの削除メソッド
  def destroy
  
    #親カテゴリーのオブジェクトを取得。 
    @parents = Category.find(1).children
    
    #親カテゴリーか子カテゴリーか？を判定する。
    @flag = false
    #idを取得する。この時にstringからintegerにする。
    @id = params[:id].to_i
    #親カテゴリーの編集か、子カテゴリーの編集かを判定する。
    @parents.each do |parent|
      if parent[:id] == @id 
        @flag = true 
        break #ループをぬける。
      end
    end

    if @flag
      #親カテゴリーだったら場合の処理。論理削除する。
      #親が持つ子のカテゴリーを論理削除
      @children = Category.find(@id).children
      @children.each do |child| 
        #child.destroy
      end
      #親カテゴリーを論理削除する。
      #Category.find(@id).destroy 
      
      redirect_to :categories

    else
      #子カテゴーだった場合のの処理。
      #子カテゴリーを論理削除
      #Category.find(@id).destroy

      redirect_to :categories
    end

  
  end







end
