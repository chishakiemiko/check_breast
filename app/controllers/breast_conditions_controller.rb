class BreastConditionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def top
  end

  def index
      @breast_conditions = current_user.breast_conditions
  end

  def new
    @breast_condition = BreastCondition.new
  end

  def create
    @breast_condition = BreastCondition.new(breast_condition_params)
    
    if @breast_condition.save

    else
      render :new
    end
  end
  
  def edit
  end

  def show
    @breast_condition = BreastCondition.find(params[:id])
  end
  
  private
  
  def breast_condition_params
    params.require(:breast_condition).permit(:is_fever, :is_breast_pain, :is_breast_redness, :is_breast_lump, :is_upper_limb_elevation, :is_systemic_symptoms,:is_elapsed_time,:is_medication).merge(user_id: current_user.id)
  end

end
