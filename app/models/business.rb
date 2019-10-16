class Business < ApplicationRecord
  has_many :user_business
  has_many :users, through: :user_business
  has_many :orders
  has_many :received_orders, :class_name => 'Order', :foreign_key => 'vendor_id'
end
