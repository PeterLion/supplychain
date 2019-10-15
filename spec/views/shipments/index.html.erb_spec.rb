require 'rails_helper'

RSpec.describe "shipments/index", type: :view do
  before(:each) do
    assign(:shipments, [
      Shipment.create!(),
      Shipment.create!()
    ])
  end

  it "renders a list of shipments" do
    render
  end
end
