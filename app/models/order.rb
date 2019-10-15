class Order < ApplicationRecord
    belongs_to :business
    has_many :shipments
    has_many :product_orders
    has_many :products, through: :product_orders
end
