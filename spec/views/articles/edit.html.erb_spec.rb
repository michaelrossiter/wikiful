require 'spec_helper'

describe "articles/edit" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :title => "MyString",
      :category => "MyString",
      :text => "MyText",
      :user_id => nil
    ))
  end

  it "renders the edit article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", article_path(@article), "post" do
      assert_select "input#article_title[name=?]", "article[title]"
      assert_select "input#article_category[name=?]", "article[category]"
      assert_select "textarea#article_text[name=?]", "article[text]"
      assert_select "input#article_user_id[name=?]", "article[user_id]"
    end
  end
end
