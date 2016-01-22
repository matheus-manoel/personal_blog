require 'test_helper'

class PostsControllerTest < ActionController::TestCase

  def setup
    @post = posts(:exemplo)
    @tag  = ActsAsTaggableOn::Tag.find(1)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "matheus-manoel's Blog"
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_select "title", "New Post | matheus-manoel's Blog"
  end

  test "should get show" do
    get :show, id: @post.id
    assert_response :success
    assert_select "title", "MyString | matheus-manoel's Blog"
    assert_select "h1[class=?]", "title"
    assert_select "h3[class=?]", "subtitle"
    assert_select "p[class=?]", "body"
    assert_select "p[class=?]", "tag_list"
  end

end
