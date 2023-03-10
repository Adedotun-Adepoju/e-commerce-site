class Customer < ApplicationRecord
    validates :first_name, presence: true # Validate first_name field
    validates :last_name, presence: true  # validate last_name field
    validates :email, presence: true    # validate email field
    has_one :cart 
end
