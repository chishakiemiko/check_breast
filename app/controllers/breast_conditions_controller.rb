class BreastConditionsController < ApplicationController
  
  def top
  end

  def index
    @breast_conditions = BreastCondition.all
  end

  def new
    @breast_condition = BreastCondition.new
    # @users = User.all
  end

  def create
    @breast_condition = BreastCondition.create(breast_condition_params)
  end
  
  def edit
  end

  def show
  end
  
  private
  
  def breast_condition_params
    params.require(:breast_condition).permit(:is_fever, :is_breast_pain, :is_breast_redness, :is_breast_lump, :is_upper_limb_elevation, :is_systemic_symptoms )
  end
end
