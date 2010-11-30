require 'spec_helper'

describe "articles/edit.html.haml" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :title => "MyString",
      :content => "MyText",
      :parent => nil,
      :author => nil
    ))
  end

  it "renders the edit article form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => article_path(@article), :method => "post" do
      assert_select "input#article_title", :name => "article[title]"
      assert_select "textarea#article_content", :name => "article[content]"
      assert_select "input#article_parent", :name => "article[parent]"
      assert_select "input#article_author", :name => "article[author]"
    end
  end
end
