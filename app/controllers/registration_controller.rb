class RegistrationController < ApplicationController
    def login
        @customer = Customer.new
    end
end