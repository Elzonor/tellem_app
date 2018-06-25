class AddReferencesToPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :history_event, foreign_key: true
  end
end
