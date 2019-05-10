class Api::V1::HabitsController < ApplicationController
    

    def index 
        @habits = Habit.all 
        render json: @habits
    end 

    def show 
      find_habit()
    end 

    def new 
      @habit = Habit.new
    end 

    def create
      @habit = Habit.new(habit_params)
      if @habit.save 
        render json: @habit
      else  
        render json: { errors: @habit.errors.full_messages }, status: :unprocessible_entity 
      end 
    end

    def edit 
      @habit = Habit.find(params[:id])
    end 

    def update 
      @habit = Habit.find(params[:id])
      @habit.update(habit_params)
    end 

    def destroy
      @habit = Habit.find(params[:id])
      @habit.destroy
      render json: {status: :ok}, status: :ok
    end

    private 

    def habit_params
        params.permit(:name, :user_id)
      end
     
      # def find_habit
      #   @habit = Habit.find(params[:id])
      # end
end
