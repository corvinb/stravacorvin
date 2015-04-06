require 'rails_helper'

RSpec.describe "anas/edit", type: :view do
  before(:each) do
    @ana = assign(:ana, Ana.create!())
  end

  it "renders the edit ana form" do
    render

    assert_select "form[action=?][method=?]", ana_path(@ana), "post" do
    end
  end
end
