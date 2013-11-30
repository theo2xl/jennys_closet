require 'spec_helper'

describe "items/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :size => "MyString",
      :color => "MyString",
      :tag => "MyString",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", items_path, "post" do
      assert_select "input#item_size[name=?]", "item[size]"
      assert_select "input#item_color[name=?]", "item[color]"
      assert_select "input#item_tag[name=?]", "item[tag]"
      assert_select "input#item_image[name=?]", "item[image]"
    end
  end
end
