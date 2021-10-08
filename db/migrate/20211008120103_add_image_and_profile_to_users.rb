class AddImageAndProfileToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :image, :string
    add_column :users, :profile, :text
    add_column :users, :prefecture_id, :integer
    add_column :users, :school_id, :integer
  end
end
