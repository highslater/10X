require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end


  test "should get root" do
    get root_url
    assert_equal "home", @controller.action_name
    assert_select "title", "Home | #{@base_title}"
    assert_response :success
  end

  test "should get help" do
    get help_url
    assert_equal "help", @controller.action_name
    assert_select "title", "Help | #{@base_title}"
    assert_response :success
  end

  test "should get about" do
    get about_url
    assert_equal "about", @controller.action_name
    assert_select "title", "About | #{@base_title}"
    assert_response :success
  end

  test "should get contact" do

    get contact_url
    assert_equal "contact", @controller.action_name
    assert_select "title", "Contact | #{@base_title}"
    assert_response :success
  end

end
