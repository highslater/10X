require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:article)
  end

  teardown do
    Rails.cache.clear
    puts "Cache was cleared"
  end

  test "should get index" do
    get articles_url
    assert_equal "index", @controller.action_name
    assert_match "Articles", @response.body

    # assert_equal "application/x-www-form-urlencoded", @request_uri
    # p @request
    assert_response :success

    # setting an HTTP Header
    # simulate the request with custom header
    get articles_url, headers: { "Content-Type": "text/plain" }
    assert_equal "index", @controller.action_name
    assert_match "Articles", @response.body
    assert_response :success

    # setting a CGI variable
    # simulate the request with custom env variable
    get articles_url, headers: { "HTTP_REFERER": "http://example.com/home" }
    assert_equal "index", @controller.action_name
    assert_match "Articles", @response.body
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post articles_url, params: { article: { body: @article.body, title: @article.title } }
    end

    assert_redirected_to article_url(Article.last)
    assert_equal 'Yuppers', flash[:notice]
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end

  test "should update article" do
    patch article_url(@article), params: { article: { body: @article.body, title: "updated title" } }
    assert_redirected_to article_url(@article)
    @article.reload
    assert_equal "updated title", @article.title
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_url
  end
end
