require "application_system_test_case"

class RunningBlogsTest < ApplicationSystemTestCase
  setup do
    @running_blog = running_blogs(:one)
  end

  test "visiting the index" do
    visit running_blogs_url
    assert_selector "h1", text: "Running Blogs"
  end

  test "creating a Running blog" do
    visit running_blogs_url
    click_on "New Running Blog"

    fill_in "Author", with: @running_blog.author
    fill_in "Content", with: @running_blog.content
    fill_in "Date", with: @running_blog.date
    fill_in "Picture", with: @running_blog.picture
    fill_in "Title", with: @running_blog.title
    click_on "Create Running blog"

    assert_text "Running blog was successfully created"
    click_on "Back"
  end

  test "updating a Running blog" do
    visit running_blogs_url
    click_on "Edit", match: :first

    fill_in "Author", with: @running_blog.author
    fill_in "Content", with: @running_blog.content
    fill_in "Date", with: @running_blog.date
    fill_in "Picture", with: @running_blog.picture
    fill_in "Title", with: @running_blog.title
    click_on "Update Running blog"

    assert_text "Running blog was successfully updated"
    click_on "Back"
  end

  test "destroying a Running blog" do
    visit running_blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Running blog was successfully destroyed"
  end
end
