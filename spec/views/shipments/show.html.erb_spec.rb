require 'rails_helper'

RSpec.describe "shipments/show", type: :view do
  before(:each) do
    @shipment = assign(:shipment, Shipment.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
