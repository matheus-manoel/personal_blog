require 'test_helper'

class PostTest < ActiveSupport::TestCase

  def setup
    @post = Post.new(title: "Titulo", subtitle: "Subtitulo", body: "Corpo")
  end

  test "should be valid" do
    assert @post.valid?
  end

  test "title should be present" do
    @post.title = ""
    assert_not @post.valid?
  end

  test "title should have max length of 256" do
    @post.title = "a"*257
    assert_not @post.valid?
  end

  test "title should be unique" do
    post_dup = @post.dup
    @post.save
    assert_not post_dup.valid?
  end

  test "subtitle should be present" do
    @post.subtitle = ""
    assert_not @post.valid?
  end

  test "subtitle should have max length of 256" do
    @post.subtitle = "a"*257
    assert_not @post.valid?
  end

  test "body should be present" do
    @post.body = ""
    assert_not @post.valid?
  end

end
