class Task < ActiveRecord::Base
	has_many :task_categories
	has_many :categories, through: :task_categories

	accepts_nested_attributes_for :task_categories, allow_destroy: true,:reject_if => lambda {|a| a[:category_id].blank?}
end
