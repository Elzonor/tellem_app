module ApplicationHelper

	def current_class?(test_path)
		return " active" if request.path == test_path
		""
	end

	$website_name = " — Tellem"

	$posts_title = "Posts"
	$post_new_title = "Write new post"
	$post_edit_title = "Edit post"

	$post_form_label_publish = "Publish post"
	$post_form_label_title = "Title"
	$post_form_label_abstract = "Abstract"
	$post_form_label_body = "Body"

	$label_or = "or"
	$label_changes_save = "Save changes"
	$label_changes_cancel = "cancel and go back"

	$label_post_delete = "delete post"

	$history_events_title ="History"
	$event_types_title = "Events"

end
