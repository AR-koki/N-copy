class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.integer :category, null: false, default: 0
      t.boolean :is_active
      t.string :title
      t.float :evaluation
      t.integer :genre_id
      t.text :introduction
      t.string :image_id
      t.timestamps
    end
  end
end
