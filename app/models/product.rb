class Product < ApplicationRecord
    belongs_to :business
    has_many :product_orders
    has_many :orders, through: :product_orders
end
