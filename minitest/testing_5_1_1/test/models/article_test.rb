require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  test "should not save article without title" do
    assert_not articles(:article_without_title).save,
      "\n\nSaved an article without a title"
  end

  test "should not save article without body" do
    assert_not articles(:article_without_body).save,
      "\n\nSaved an article without a body"
  end

  test "should not save article with short body" do
    assert_not articles(:article_with_short_body).save,
      "\n\nSaved an article with short body"
  end

  test "should not save article with long body" do
    assert_not articles(:article_with_long_body).save,
      "\n\nSaved an article with long body"
  end

  test "should save valid article " do
    assert articles(:article).save,
      "\n\nDid not save a valid article"
  end

end
