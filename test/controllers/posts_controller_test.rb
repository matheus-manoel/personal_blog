require 'test_helper'

class PostsControllerTest < ActionController::TestCase

  def setup
    @post = posts(:exemplo)
    @tag = ActsAsTaggableOn::Tag.find(1)
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
    assert_select "p[class=?]", "tag_list"
  end

  test "should create post" do
    assert_difference "Post.count" do
      post :create, post: { body: @post.body, title: @post.title, tag_list: @tag.name }
    end
    assert_redirected_to post_path(id: assigns(:post))
  end

end
