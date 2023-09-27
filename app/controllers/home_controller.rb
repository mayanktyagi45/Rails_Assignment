class HomeController < ApplicationController
  def index
    @training_plans = TrainingPlan.all
  end
end
