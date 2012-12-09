#coding: utf-8
#Expertコントローラー
class ExpertsController < ApplicationController

  def index

    @flag = true
    #エキスパートのみ取り出す。
    @experts = User.where(advice: true)

  end

  #エキスパートを表示させるアクション
  def show

    @expert = User.find_by_id_and_advice(params[:id],true)
    logger.debug(@expert.inspect)
    if !@expert
      #エラー処理を起こす
      
    end

  
  end

  def new

  end


  def create


  end


  def edit


  end


  def update


  end

  def destroy


  end

  #検索するメソッド
  def search

    @flag = false
    #選択されたカテゴリーのidをいれる配列の変数
    @selections = params[:category]
    if !@selections
      redirect_to :categories
      #フラッシュで何か表示するか？

      return
    end

    @text1 = ""
    @count = 0
    @selsum = @selections.size
    
    @selections.each do |selection|
      @count = @count + 1
      if @count != @selsum
        @text1 << selection + ","
      else @count == @selsum
        @text1 << selection
      end
    end
    @text2 = "("+ @text1 + ")"

    #選択されたカテゴリーをもってる、エキスパートを@expertsにいれる。
    @sql = "SELECT u.*
            FROM taggings t,users u,categories c 
            WHERE t.category_id  = c.id
            AND (c.id IN"+ @text2 +
            ") AND u.id = t.user_id
            GROUP BY u.id"
    
    @experts = User.find_by_sql(@sql)
    
    #experts/indexをレンダリングする。
    render "index"


  end





end
