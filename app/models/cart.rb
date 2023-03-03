class Cart < ApplicationRecord
    belongs_to :customer
    has_many :items_by_cart
end
