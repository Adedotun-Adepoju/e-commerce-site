class Item < ApplicationRecord
    belongs_to :category
    has_many :items_by_carts
end
