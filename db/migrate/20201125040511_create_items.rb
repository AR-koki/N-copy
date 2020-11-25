class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :movie_id
      t.string :image_id
      t.string :title
      t.text :gist
      t.timestamps
    end
  end
end
