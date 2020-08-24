require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  def setup
    @item = Item.new(name: "苺のショートケーキ", caption: "春はやっぱりあま〜いショートケーキが一番です！", image: "cake.jpg", price: 550)
  end
  
  test "should be valid" do
    @item.valid?
  end
  
  test "name should be present" do
    @item.name = ""
    assert_not @item.valid?
  end
  
  test "caption should be present" do
    @item.caption = ""
    assert_not @item.valid?
  end
  
  test "image should be present" do
    @item.image = ""
    assert_not @item.valid?
  end
  
  test "price should be present" do
    @item.price = nil
    assert_not @item.valid?
  end
  
  test "name should not be too long" do
    @item.name = "a" * 51
    assert_not @item.valid?
  end
    
  test "caption should not be too long" do
    @item.name = "a" * 256
    assert_not @item.valid?
  end
  
  test "price should be 0 to 10000000" do
    @item.price = -1
    assert_not @item.valid?
     @item.price = 100000000
    assert_not @item.valid?
  end
end
