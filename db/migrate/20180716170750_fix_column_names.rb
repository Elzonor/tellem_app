class FixColumnNames < ActiveRecord::Migration[5.1]
  def change
	  rename_column :event_types, :event_type, :type
	  rename_column :posts, :post_title, :title
	  rename_column :posts, :post_abstract, :abstract
	  rename_column :posts, :post_body, :body
	  rename_column :posts, :post_quote, :quote
  end
end
