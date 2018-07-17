module ApplicationHelper
	
	def current_class?(test_path)
		return " active" if request.path == test_path
		""
	end
	
	$generic_title = " — Anna Vairo Coach"
	
	$posts_title = "Posts"
	$post_new_title = "Write new post"
	$post_edit_title = "Edit post"
	
	$post_form_label_publish = "Publish post"
	$post_form_label_title = "Title"
	$post_form_label_abstract = "Abstract"
	$post_form_label_body = "Body"
	
	$label_or = "or"
	$lable_changes_save = "Save changes"
	$lable_changes_cancel = "cancel and go back"
	
	$history_events_title ="History"
	$event_types_title = "Events"
	
end
