require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit articles_url
    assert_selector "h1", text: "Articles"
  end

  test "creating an article" do
    visit articles_path

    click_on "New Article"
    fill_in "Title", with: articles(:article).title
    fill_in "Body", with: articles(:article).body
    click_on "Create Article"
    assert_text "valid article"
    assert_text "XXXXXXXXXX"


  end

end
