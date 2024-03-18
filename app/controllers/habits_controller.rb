class HabitsController < ApplicationController
  before_action :set_habit

  def show
  end

  def plus
    @habit.increment!(:count)
    redirect_to habit_path(@habit)
  end

  def minus
    @habit.decrement!(:count)
    redirect_to habit_path(@habit)
  end

  private
    def set_habit
      @habit = Habit.find(params[:id])
    end
end
