class CreateAvatars < ActiveRecord::Migration[5.2]
  def change
    create_table :avatars do |t|
      t.string :name
      t.string :image_id
      t.integer :user_id

      t.timestamps
    end
  end
end
