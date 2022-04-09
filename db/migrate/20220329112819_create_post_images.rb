class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|
      t.string :shop_name
      t.integer :user_id
      t.text :caption
      t.timestamps
    end
  end
end
