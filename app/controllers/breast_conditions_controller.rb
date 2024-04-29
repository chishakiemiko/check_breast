class BreastConditionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def top
  end

  def index
    # if user_signed_in?
      # @breast_condidions = BreastCondition.where(user_id: current_user.id).order('created_at DESC')
      @breast_conditions = current_user.breast_conditions
      # @breast_conditions = BreastCondition.all
      # breast_condition = @breast_conditions
      # @mybreast_conditons = current_user.breast_conditions
    # end
  end

  def new
    @breast_condition = BreastCondition.new
    # @users = User.all
  end

  def create
    @breast_condition = BreastCondition.new(breast_condition_params)
    # redirect_to breast_condition_path, notice: '乳腺炎チェック　結果が出力されました。'
    if @breast_condition.save
      # redirect_to root_path, notice: '乳腺炎チェック　結果が出力されました。'
      # redirect_to breast_condition_path(breast_condition_params), notice: '乳腺炎チェック　結果が出力されました。'
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
    params.require(:breast_condition).permit(:is_fever, :is_breast_pain, :is_breast_redness, :is_breast_lump, :is_upper_limb_elevation, :is_systemic_symptoms).merge(user_id: current_user.id)
  end
end
