require 'spec_helper'

describe "vids/show" do
  before(:each) do
    @vid = assign(:vid, stub_model(Vid,
      :title => "Title",
      :description => "Description",
      :youtube_url => "Youtube Url",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(/Youtube Url/)
    rendered.should match(/1/)
  end
end
