require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "layout links" do
    get root_path
    assert_template 'items/top'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", items_path, count: 1, text: "商品一覧"
    assert_select "a[href=?]", signup_path
    assert_select "a[href=?]", login_path
  end
end
