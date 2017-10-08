class RegistrationsController < Devise::RegistrationsController

    def after_sign_up_path_for(resource)
        # user_path(resource)
        dogs_index_path
    end
    
    private
        
        def sign_up_params
            params.require(:user).permit(:user_name, :email, :password, :password_confirmation)
        end
end