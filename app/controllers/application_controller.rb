class ApplicationController < ActionController::Base
  # before_action :authenticate_user!,only: [:new, :create, :edit, :update]
  
  
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:zip_code])
    devise_parameter_sanitizer.permit(:account_update, keys: [:zip_code])
  end
  
  
  def after_sign_in_path_for(resource)
    breast_conditions_path # ログイン後に遷移するpathを設定
  end

  def after_sign_out_path_for(resource)
    root_path # ログアウト後に遷移するpathを設定
  end
  
  def after_update_path_for(resource)
    # 自分で設定した「マイページ」へのパス
    breast_conditions_path(current_user)
  end
end
