class CreatePosts < ActiveRecord::Migration[5.1]
	def change
		create_table :posts do |t|
		t.string :post_title
		t.text :post_abstract
		t.text :post_quote
		t.text :post_body
		
		t.timestamps
		end
	end
end
