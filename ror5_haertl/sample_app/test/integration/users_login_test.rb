require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  test "login with invalid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { email: "", password: "" } }
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end

  test "login with valid information followed by logout" do
    get login_path
    post login_path, params: { session: { email:    @user.email,
                                          password: 'password' } }
    assert is_logged_in?
    assert_redirected_to @user
    follow_redirect!
    assert_template 'users/show'
    assert is_logged_in?
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", user_path(@user)
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_url
    # Simulate a user clicking logout in a second window.
    delete logout_path
    follow_redirect!
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", logout_path,      count: 0
    assert_select "a[href=?]", user_path(@user), count: 0
  end

  test "authenticated? should return false for a user with nil digest" do
    assert_not @user.authenticated?('')
  end

  test "login with remembering" do
    log_in_as(@user, remember_me: '1')
    assert_not_empty cookies['user_id']
    assert_not_empty cookies['remember_token']
  end

  test "login without remembering" do
    # Log in to set the cookie.
    log_in_as(@user, remember_me: '1')
    # Log in again and verify that the cookie is deleted.
    log_in_as(@user, remember_me: '0')
    assert_empty cookies['user_id']
    assert_empty cookies['remember_token']
  end

  test "login with remembering then close then return" do
=begin

Scernario A:
User open browser
User access login page
User input email & password, check "Remember Me"
User successfully login, then redirect to a protected page, such as "Profile page"
User close browser ( this should clear all session, not the cookies remember_token )
User open browser again.
User access "Profile page" directly, and success render "Profile page"

Scernario B:
User open browser
User access login page
User input email & password, uncheck "Remember Me"
User successfully login, then redirect to a protected page, such as "Profile page"
User close browser
User open browser again.
User access "Profile page" directly, and redirect to login page

Oh, I found out a gem, show_me_the_cookie, provided method expire_cookies,
it is a perfect fit for simulate close browser & open browser!
This is a simple feature test case for Scenario A.

sign_in_as user, remember_me: true
expect(current_path).to eql profile_path
# restart browser, clear out session, except cookies
expire_cookies
visit profile_path
expect(current_path).to eql profile_path

=end

    # remembering
    get login_path
    assert_template 'sessions/new'
    log_in_as(@user, remember_me: '1')
    assert_redirected_to @user
    follow_redirect!
    assert_template 'users/show'
    assert_not_empty cookies['user_id']
    assert_not_empty cookies['remember_token']
    assert is_logged_in?
    assert_not flash.empty?
    get root_path
    assert flash.empty?
    # /remembering

    # closing
    # pseudocode destroy root_path
    # /closing

    # returning
    get root_path
    assert is_logged_in?
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", user_path(@user)
    #/ returning



  end

  test "login with remembering authentication" do
    get login_path
    log_in_as(@user, remember_me: '1')

    # assert @user.authenticated?(cookies['remember_token'])

  end



end
