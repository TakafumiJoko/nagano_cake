require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @item = items(:one)
  end
  
  test "should get top" do
    get root_path
    assert_response :success
  end

  test "should get index" do
    get items_path
    assert_response :success
  end

  test "should get show" do
    get item_path(@item)
    assert_response :success
  end
  
end
