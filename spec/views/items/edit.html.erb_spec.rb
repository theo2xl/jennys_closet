require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :size => "MyString",
      :color => "MyString",
      :tag => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", item_path(@item), "post" do
      assert_select "input#item_size[name=?]", "item[size]"
      assert_select "input#item_color[name=?]", "item[color]"
      assert_select "input#item_tag[name=?]", "item[tag]"
      assert_select "input#item_image[name=?]", "item[image]"
    end
  end
end
