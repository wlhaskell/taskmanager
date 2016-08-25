module FormHelper
	def setup_task(task)
		if task.task_categories.length ==0
			task.task_categories.push TaskCategory.new
		end
		task
	end
end