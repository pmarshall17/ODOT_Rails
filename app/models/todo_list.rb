class TodoList < ActiveRecord::Base
	has_many :todo_items
	validates :title, presence: true
	validates :title, length: {minimum: 2}
end
