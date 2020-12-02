class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.string :item1
      t.string :item2
      t.text :body1
      t.text :body2
      t.timestamps
    end
  end
end
