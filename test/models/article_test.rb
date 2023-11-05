require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  def setup
    @article = articles(:one)
  end

  test "should be valid" do
    assert @article.valid?
  end

  test "title should be present" do
    @article.title = ""
    assert_not @article.valid?
  end

  test "body should be present" do
    @article.body = ""
    assert_not @article.valid?
  end

  test "body should have a minimum length of 15 characters" do
    @article.body = "Short body"
    assert_not @article.valid?
  end
end
