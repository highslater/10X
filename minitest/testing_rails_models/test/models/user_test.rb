require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user1 = users(:valid_user)
    @user2 = users(:old_user)
  end


  test 'valid user' do
    assert @user1.valid?
    assert @user2.valid?
  end

  test 'invalid without name' do
    @user1.name = nil
    @user2.name = nil
    refute @user1.valid?, 'user is valid without a name'
    refute @user2.valid?, 'user is valid without a name'
    assert_not_nil @user1.errors[:name], 'no validation error for name present'
    assert_not_nil @user2.errors[:name], 'no validation error for name present'
  end

  test 'invalid without email' do
    @user1.email = nil
    @user2.email = nil
    refute @user1.valid?
    refute @user2.valid?
    assert_not_nil @user1.errors[:email]
    assert_not_nil @user2.errors[:email]
  end

  test '#posts' do
    assert_equal 2, @user1.posts.size
    assert_equal 0, @user2.posts.size
  end

  test '#recent' do
    assert_includes User.recent, users(:valid_user)
    refute_includes User.recent, users(:old_user)
  end

  test '#profile_photo_url' do
    assert_equal(
      'https://s.gravatar.com/avatar/a2f7cfdcdb79d8d18e0cff1ad5684e20',
      @user1.profile_photo_url
    )
    assert_not_equal(
      'https://s.gravatar.com/avatar/not_a_correct_md5_hash',
      @user2.profile_photo_url
    )
  end



end
