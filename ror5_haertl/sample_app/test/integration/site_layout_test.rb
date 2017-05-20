require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  class ApplicationHelperTest < ActionView::TestCase
    test "full title helper" do
      assert_equal full_title,         "Ruby on Rails Tutorial Sample App"
      assert_equal full_title("Help"), "Help | Ruby on Rails Tutorial Sample App"
    end
  end

  # Test Paths

  test "root_path" do

    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", signup_path
    assert_select "a[href=?]", "http://rubyonrails.org/"
    assert_select "a[href=?]", "http://www.michaelhartl.com/"
    assert_select "a[href=?]", "http://www.railstutorial.org/"
    assert_select "a[href=?]", "http://news.learnenough.com/"

  end

  test "help_path" do

    get help_path
    assert_select "title", full_title("Help")
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", "http://www.michaelhartl.com/"
    assert_select "a[href=?]", "http://www.railstutorial.org/"
    assert_select "a[href=?]", "http://www.railstutorial.org/help"
    assert_select "a[href=?]", "http://www.railstutorial.org/book"
    assert_select "a[href=?]", "http://news.learnenough.com/"

  end

  test "about_path" do

    get about_path
    assert_select "title", full_title("About")
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", "http://www.michaelhartl.com/"
    assert_select "a[href=?]", "http://www.railstutorial.org/"
    assert_select "a[href=?]", "http://news.learnenough.com/"

  end

  test "contact_path" do

    get contact_path
    assert_select "title", full_title("Contact")
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", "http://www.michaelhartl.com/"
    assert_select "a[href=?]", "http://www.railstutorial.org/"
    assert_select "a[href=?]", "http://www.railstutorial.org/contact"
    assert_select "a[href=?]", "http://news.learnenough.com/"

  end

  test "signup_path" do

    get signup_path
    assert_select "title", full_title("Sign up")
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", "http://www.michaelhartl.com/"
    assert_select "a[href=?]", "http://www.railstutorial.org/"
    assert_select "a[href=?]", "http://news.learnenough.com/"

  end

end

# /Test Paths
