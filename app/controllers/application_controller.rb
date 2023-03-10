class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
        if session[:customer_id]
            Current.customer = Customer.find_by(id: session[:customer_id])
        end
    end
end
