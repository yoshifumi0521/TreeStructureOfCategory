class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name,null: false 
      t.string :uid,null: false
      t.boolean :use,default: true #利用者かどうか？
      t.boolean :advice,default: false #アドバイザーかどうか？

      t.timestamps
    end
  end
end
