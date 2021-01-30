require 'rails_helper'

RSpec.describe "rentals/show", type: :view do
  before(:each) do
    @rental = assign(:rental, Rental.create!(
      name: "Name",
      location: "Location",
      price: "Price"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Price/)
  end
end
