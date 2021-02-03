require 'rails_helper'

RSpec.describe "rentals/edit", type: :view do
  before(:each) do
    @rental = assign(:rental, Rental.create!(
      name: "MyString",
      location: "MyString",
      price: "MyString"
    ))
  end

  it "renders the edit rental form" do
    render

    assert_select "form[action=?][method=?]", rental_path(@rental), "post" do

      assert_select "input[name=?]", "rental[name]"

      assert_select "input[name=?]", "rental[location]"

      assert_select "input[name=?]", "rental[price]"
    end
  end
end
