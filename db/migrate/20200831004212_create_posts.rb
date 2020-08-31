class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :description
      t.text :image
      t.float :latitude
      t.float :longitude
      t.boolean :post_visibility

      t.timestamps
    end
  end
end
