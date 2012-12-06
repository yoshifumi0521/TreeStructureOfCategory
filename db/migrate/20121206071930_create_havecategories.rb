class CreateHavecategories < ActiveRecord::Migration
  def change
    create_table :havecategories do |t|
      t.references :category
      t.references :user

      t.timestamps
    end
    add_index :havecategories, :category_id
    add_index :havecategories, :user_id
  end
end
