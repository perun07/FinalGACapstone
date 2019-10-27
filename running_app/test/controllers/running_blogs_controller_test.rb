require 'test_helper'

class RunningBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @running_blog = running_blogs(:one)
  end

  test "should get index" do
    get running_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_running_blog_url
    assert_response :success
  end

  test "should create running_blog" do
    assert_difference('RunningBlog.count') do
      post running_blogs_url, params: { running_blog: { author: @running_blog.author, content: @running_blog.content, date: @running_blog.date, picture: @running_blog.picture, title: @running_blog.title } }
    end

    assert_redirected_to running_blog_url(RunningBlog.last)
  end

  test "should show running_blog" do
    get running_blog_url(@running_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_running_blog_url(@running_blog)
    assert_response :success
  end

  test "should update running_blog" do
    patch running_blog_url(@running_blog), params: { running_blog: { author: @running_blog.author, content: @running_blog.content, date: @running_blog.date, picture: @running_blog.picture, title: @running_blog.title } }
    assert_redirected_to running_blog_url(@running_blog)
  end

  test "should destroy running_blog" do
    assert_difference('RunningBlog.count', -1) do
      delete running_blog_url(@running_blog)
    end

    assert_redirected_to running_blogs_url
  end
end
