require 'spec_helper'

describe User do
  before(:each) do
    @user = Factory.create(:user)
    subject { @user }
  end

  it "should be audited" do
    with_versioning { should have_many :versions}
  end
end
