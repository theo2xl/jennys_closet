require 'spec_helper'

describe "items/index" do
  before(:each) do
    assign(:items, [
      stub_model(Item,
        :size => "Size",
        :color => "Color",
        :tag => "Tag",
        :image => "Image"
      ),
      stub_model(Item,
        :size => "Size",
        :color => "Color",
        :tag => "Tag",
        :image => "Image"
      )
    ])
  end

  it "renders a list of items" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Tag".to_s, :count => 2
    #assert_select "tr>td img[src='Image']", :text => "Image".to_s, :count => 2
  end
end
