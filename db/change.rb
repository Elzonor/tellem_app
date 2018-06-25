my_change = @post.find(3)
my_change.created_at = Date.today
my_change.save