class TodosController < ApplicationController

    def index
        @todos = Todo.all
        # returns all completed todos
        @completed_todos = Todo.ar_completed_todos
    end

    def new
        @todo = Todo.new
    end

    def create
        @todo = Todo.new(todo_params)
        if @todo.save
            redirect_to @todo
        else
            render :new
        end
    end

    private
    def todo_params
        params.require(:todo).permit(:name, :complete)
    end


end
