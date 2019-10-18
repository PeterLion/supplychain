class Business < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :received_orders, :class_name => 'Order', :foreign_key => 'vendor_id'
  has_many :products
end
