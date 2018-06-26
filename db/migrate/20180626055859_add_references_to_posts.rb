class AddReferencesToPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :event_type, foreign_key: true
  end
end
