require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

=begin

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end


  test "should get root" do
    get root_url
    assert_equal "home", @controller.action_name
    assert_select "title", "Home | #{@base_title}"
    assert_response :success
  end

  
=end


  # Test Controller Actions

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_equal "home", @controller.action_name
    assert_select "title", "SampleApp"
    assert_select "h1", "Sample App", "\nThis should say Sample App\n"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_equal "help", @controller.action_name
    assert_select "title", "SampleApp"
    assert_select "h1", "Help", "\nThis should say Help\n"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_equal "about", @controller.action_name
    assert_select "title", "SampleApp"
    assert_select "h1", "About", "\nThis should say About\n"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_equal "contact", @controller.action_name
    assert_select "title", "SampleApp"
    assert_select "h1", "Contact", "\nThis should say Contact\n"
  end

  # /Test Controller Actions

  # Test Routing

  test "should route to home" do
    # Asserts that the default action is generated.
    assert_generates "/static_pages/home", controller: "static_pages", action: "home"
    # Test a specific action
    assert_recognizes({controller: 'static_pages', action: 'home'}, 'static_pages/home')
    # Asserts a basic route: a controller with the default action (index)
    assert_routing '/static_pages/home', controller: 'static_pages', action: 'home'

  end

  test "should route to help" do
    # Asserts that the default action is generated.
    assert_generates "/static_pages/help", controller: "static_pages", action: "help"
    # Test a specific action
    assert_recognizes({controller: 'static_pages', action: 'help'}, 'static_pages/help')
    # Asserts a basic route: a controller with the default action (index)
    assert_routing 'static_pages/help', controller: 'static_pages', action: 'help'

  end

  test "should route to about" do
    # Asserts that the default action is generated.
    assert_generates "/static_pages/about", controller: "static_pages", action: "about"
    # Test a specific action
    assert_recognizes({controller: 'static_pages', action: 'about'}, 'static_pages/about')
    # Asserts a basic route: a controller with the default action (index)
    assert_routing 'static_pages/about', controller: 'static_pages', action: 'about'

  end

  test "should route to contact" do
    # Asserts that the default action is generated.
    assert_generates "/static_pages/contact", controller: "static_pages", action: "contact"
    # Test a specific action
    assert_recognizes({controller: 'static_pages', action: 'contact'}, 'static_pages/contact')
    # Asserts a basic route: a controller with the default action (index)
    assert_routing 'static_pages/contact', controller: 'static_pages', action: 'contact'

  end

  # / Test Routing

end
