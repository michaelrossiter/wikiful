require 'spec_helper'

describe "categories/index" do
 it "displays all the categories" do
    assign(:categories, [
      Category.create!(:name => "Computer Science"),
      Category.create!(:name => "Business")
    ])

    render

    expect(rendered).to match /Computer Science/
    expect(rendered).to match /Business/
  end
end