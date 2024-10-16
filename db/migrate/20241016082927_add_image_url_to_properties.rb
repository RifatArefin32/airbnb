class AddImageUrlToProperties < ActiveRecord::Migration[7.2]
  def change
    add_column :properties, :image_url, :string
  end
end
