module ApplicationHelper
	def link_to_add_categories(name, f, association)
		new_object = TaskCategory.new
		id = new_object.object_id
		fields = f.fields_for(association, new_object, child_index: id) do |builder|
			render("nested_fields", f:builder)
		end
		link_to(name, '#', class: "add_categories", data: {id: id, fields: fields.gsub("\n", "")})
	end
end
