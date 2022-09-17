module ApplicationHelper

    def admin?
        if current_user.signed_in? && current_user.admin == true
        end
    end

    def cart_count_over_one
        if @cart.line_items.count > 0
            content_tag(:button, "Cart items:  #{@cart.line_items.count}", class: 'nav-link btn btn-primary')
        end
    end

    def cart_has_items
        return @cart.line_items.count > 0
    end

end
