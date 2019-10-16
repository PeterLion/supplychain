class Order < ApplicationRecord
    belongs_to :business
    belongs_to :vendor, :class_name => 'Business'
    has_many :shipments
    has_many :product_orders
    has_many :products, through: :product_orders
end
