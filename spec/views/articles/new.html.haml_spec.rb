require 'spec_helper'

describe "articles/new.html.haml" do
  before(:each) do
    assign(:article, stub_model(Article,
      :title => "MyString",
      :content => "MyText",
      :parent => nil,
      :author => nil
    ).as_new_record)
  end

  it "renders new article form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => articles_path, :method => "post" do
      assert_select "input#article_title", :name => "article[title]"
      assert_select "textarea#article_content", :name => "article[content]"
      assert_select "input#article_parent", :name => "article[parent]"
      assert_select "input#article_author", :name => "article[author]"
    end
  end
end
