require 'spec_helper'

describe "vids/new" do
  before(:each) do
    assign(:vid, stub_model(Vid,
      :title => "MyString",
      :description => "MyString",
      :youtube_url => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new vid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", vids_path, "post" do
      assert_select "input#vid_title[name=?]", "vid[title]"
      assert_select "input#vid_description[name=?]", "vid[description]"
      assert_select "input#vid_youtube_url[name=?]", "vid[youtube_url]"
      assert_select "input#vid_user_id[name=?]", "vid[user_id]"
    end
  end
end
