require 'spec_helper'

describe "articles/index.html.haml" do
  before(:each) do
    assign(:articles, [
      stub_model(Article,
        :title => "Title",
        :content => "MyText",
        :parent => nil,
        :author => nil
      ),
      stub_model(Article,
        :title => "Title",
        :content => "MyText",
        :parent => nil,
        :author => nil
      )
    ])
  end

  it "renders a list of articles" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
