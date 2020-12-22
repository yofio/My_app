class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.string :item1
      t.string :item2
      t.text :body1
      t.string :img
      t.integer :user_id
      t.string :feature1
      t.string :feature2
      t.string :feature3
      t.string :feature4
      t.string :feature5
      t.string :feature6
      t.float :rate1
      t.float :rate2
      t.float :rate3
      t.float :rate4
      t.float :rate5
      t.float :rate6
      t.timestamps
    end
  end
end
