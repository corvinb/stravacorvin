require 'rails_helper'

RSpec.describe "anas/new", type: :view do
  before(:each) do
    assign(:ana, Ana.new())
  end

  it "renders new ana form" do
    render

    assert_select "form[action=?][method=?]", anas_path, "post" do
    end
  end
end
