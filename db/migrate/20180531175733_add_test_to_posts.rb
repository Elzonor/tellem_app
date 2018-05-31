class AddTestToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :post_test, :string
  end
end
