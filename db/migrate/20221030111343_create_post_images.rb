class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|
      t.string :shop_name
      t.text :caption
      t.integer :user_id
      # マイグレーションファイルの記述場所を間違えたため、
      # ActiveModel::UnknownAttributeError　が起きた。
      # rails db:rollback　して、rails db:migrate:status　で、down表記確認後、
      # rails db:migrate　で解決
      t.timestamps
    end
  end
end
