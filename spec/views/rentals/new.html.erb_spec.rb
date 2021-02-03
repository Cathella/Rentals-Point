require 'rails_helper'

RSpec.describe "rentals/new", type: :view do
  before(:each) do
    assign(:rental, Rental.new(
      name: "MyString",
      location: "MyString",
      price: "MyString"
    ))
  end

  it "renders new rental form" do
    render

    assert_select "form[action=?][method=?]", rentals_path, "post" do

      assert_select "input[name=?]", "rental[name]"

      assert_select "input[name=?]", "rental[location]"

      assert_select "input[name=?]", "rental[price]"
    end
  end
end
