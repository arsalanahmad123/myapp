module ApplicationHelper

    def admin?
        if current_user.signed_in? && current_user.admin == true
        
        end
    end
end
