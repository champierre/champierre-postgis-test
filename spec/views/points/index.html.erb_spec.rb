require 'rails_helper'

RSpec.describe "points/index", type: :view do
  before(:each) do
    assign(:points, [
      Point.create!(
        lat: "9.99",
        lng: "9.99",
        prefecture: "Prefecture"
      ),
      Point.create!(
        lat: "9.99",
        lng: "9.99",
        prefecture: "Prefecture"
      )
    ])
  end

  it "renders a list of points" do
    render
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "Prefecture".to_s, count: 2
  end
end
