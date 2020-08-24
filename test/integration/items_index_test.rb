require 'test_helper'

class ItemsIndexTest < ActionDispatch::IntegrationTest
  
  test "index including pagination" do
    get items_path
    assert_template 'items/index'
    assert_select 'a[href=?]', items_path, count: 5
    assert_select 'div.pagination'
    Item.paginate(page: 1, per_page: 8).each do |item|
      assert_select 'a[href=?]', item_path(item)
    end
  end 
end
