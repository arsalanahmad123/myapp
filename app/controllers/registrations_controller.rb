class RegistrationsController < Devise::RegistrationsController

    def sign_up_params
        params.require(:user).permit(:name,:email,:password,:password_confirmation)
    end
    protected

    def after_sign_up_path_for(resource)
        root_path # Or :prefix_to_your_route
    end

    def after_inactive_sign_up_path_for(resource)
        root_path # Or :prefix_to_your_route
    end
    
end