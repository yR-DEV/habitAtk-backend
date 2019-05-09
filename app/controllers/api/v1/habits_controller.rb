class Api::V1::HabitsController < ApplicationController
    

    def index 
        @habits = Habit.all 
        render json: @habits
    end 

    def new 
      @habit = Habit.new
    end 

    def create
    end


    private 

    def habit_params
        params.permit(:title, :content)
      end
     
      def find_habit
        @habit = Habit.find(params[:id])
      end
end
