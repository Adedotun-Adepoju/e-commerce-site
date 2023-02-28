class SessionsController < ApplicationController
    def new 
    end

    def create
        existing_customer = Customer.where(
            first_name: params[:first_name],
            last_name: params[:last_name],
            email: params[:email]).first
        
        if existing_customer
            session[:customer_id] = existing_customer.id
            redirect_to root_path
        else  
            customer = Customer.new(customer_params)
            customer.save 
            session[:customer_id] = customer.id 
            redirect_to about_path
        end
    end

    def destroy 
        session[:customer_id] = nil
        redirect_to about_path, notice: "Logged out"
    end

    private 
    def customer_params
        params.permit(:first_name, :last_name, :email)
    end
    

end