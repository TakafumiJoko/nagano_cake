require 'test_helper'

class ItemsTopTest < ActionDispatch::IntegrationTest

  test "top embedded with items" do
    get root_path
    assert_template 'items/top'
    assert_select 'a[href=?]', items_path, count: 6
    assert_select 'a[href=?]', signup_path, text: "新規登録", count: 2
    assert_select '.recommend-link', count: 8
  end 
end
