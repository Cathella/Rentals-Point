require 'rails_helper'

RSpec.describe "rentals/index", type: :view do
  before(:each) do
    assign(:rentals, [
      Rental.create!(
        name: "Name",
        location: "Location",
        price: "Price"
      ),
      Rental.create!(
        name: "Name",
        location: "Location",
        price: "Price"
      )
    ])
  end

  it "renders a list of rentals" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: "Price".to_s, count: 2
  end
end
