require 'rails_helper'

RSpec.describe "businesses/new", type: :view do
  before(:each) do
    assign(:business, Business.new(
      :name => "MyString",
      :description => "MyText",
      :address => "MyString"
    ))
  end

  it "renders new business form" do
    render

    assert_select "form[action=?][method=?]", businesses_path, "post" do

      assert_select "input[name=?]", "business[name]"

      assert_select "textarea[name=?]", "business[description]"

      assert_select "input[name=?]", "business[address]"
    end
  end
end
