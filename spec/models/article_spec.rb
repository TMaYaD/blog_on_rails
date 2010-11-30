require 'spec_helper'

describe Article do
  before(:each) do
    @article = Factory.create(:article)
    subject { @article }
  end

  it "should be audited" do
    with_versioning { should have_many :versions}
  end

  it {
    should belong_to :parent,   :class_name => "Article"
    should have_many :replies,  :class_name => "Article",
                                :foreign_key => "parent_id"
  }

end
