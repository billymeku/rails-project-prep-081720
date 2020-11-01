class Todo < ApplicationRecord
    has_many :user_todos
    has_many :users, through: :user_todos

    scope :ar_completed_todos, -> { where(complete: true)}

    validates :name, presence: true


    # def self.completed_todos
    #     self.all.select { |todo| todo.complete == true }
    # end

    # def self.ar_completed_todos
    #     where(complete: true)
    # end

end
