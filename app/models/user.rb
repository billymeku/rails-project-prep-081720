class User < ApplicationRecord
    has_many :user_todos
    has_many :todos, through: :user_todos


    validates :username, uniqueness: true, presence: true
end
