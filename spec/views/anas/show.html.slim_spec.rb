require 'rails_helper'

RSpec.describe "anas/show", type: :view do
  before(:each) do
    @ana = assign(:ana, Ana.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
