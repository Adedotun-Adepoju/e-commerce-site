class RegistrationController < ApplicationController
    def login
        @customer = Customer.new
    end

    def create 
        @customer = Customer.new(customer_params)

        if @customer.save 
            session[:customer_id] = @customer.id
            redirect_to root_path, notice: "Successfully created account"
        else
            render :login
        end
    end

    private 

    def customer_params
        params.require(:customer).permit(:first_name, :last_name, :email)
    end
end