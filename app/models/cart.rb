class Cart < ApplicationRecord
    belongs_to :customer
    has_many :items_by_carts, dependent: :destroy
end
