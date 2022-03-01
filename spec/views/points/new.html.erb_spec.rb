require 'rails_helper'

RSpec.describe "points/new", type: :view do
  before(:each) do
    assign(:point, Point.new(
      lat: "9.99",
      lng: "9.99",
      prefecture: "MyString"
    ))
  end

  it "renders new point form" do
    render

    assert_select "form[action=?][method=?]", points_path, "post" do

      assert_select "input[name=?]", "point[lat]"

      assert_select "input[name=?]", "point[lng]"

      assert_select "input[name=?]", "point[prefecture]"
    end
  end
end
