class DeletePostInfo < ActiveRecord::Migration[5.1]
  def change
	  remove_column :posts, :post_info, :text
	  remove_column :posts, :post_test, :string
  end
end
