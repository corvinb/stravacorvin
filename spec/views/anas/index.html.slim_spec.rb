require 'rails_helper'

RSpec.describe "anas/index", type: :view do
  before(:each) do
    assign(:anas, [
      Ana.create!(),
      Ana.create!()
    ])
  end

  it "renders a list of anas" do
    render
  end
end
