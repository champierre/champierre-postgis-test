require 'rails_helper'

RSpec.describe "points/edit", type: :view do
  before(:each) do
    @point = assign(:point, Point.create!(
      lat: "9.99",
      lng: "9.99",
      prefecture: "MyString"
    ))
  end

  it "renders the edit point form" do
    render

    assert_select "form[action=?][method=?]", point_path(@point), "post" do

      assert_select "input[name=?]", "point[lat]"

      assert_select "input[name=?]", "point[lng]"

      assert_select "input[name=?]", "point[prefecture]"
    end
  end
end
