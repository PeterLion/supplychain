require 'rails_helper'

RSpec.describe "shipments/new", type: :view do
  before(:each) do
    assign(:shipment, Shipment.new())
  end

  it "renders new shipment form" do
    render

    assert_select "form[action=?][method=?]", shipments_path, "post" do
    end
  end
end
