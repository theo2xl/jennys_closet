require 'spec_helper'

describe "items/show" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :size => "Size",
      :color => "Color",
      :tag => "Tag",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Size/)
    rendered.should match(/Color/)
    rendered.should match(/Tag/)
    rendered.should match(/Image/)
  end
end
