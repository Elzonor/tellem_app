module ApplicationHelper
	
	def current_class?(test_path)
		return " active" if request.path == test_path
		""
	end
	
	$generic_title = " — Anna Vairo Coach"
	
	$posts_title = "Post"
	$post_new_title = "Scrivi nuovo post"
	$post_edit_title = "Modifica post"
	$history_events_title ="Cronologia"
	$event_types_title = "Eventi"
	
end
