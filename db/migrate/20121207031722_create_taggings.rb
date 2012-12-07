class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.references :user
      t.references :category

      t.timestamps
    end
    add_index :taggings, :user_id
    add_index :taggings, :category_id
  end
end
