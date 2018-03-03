require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
    @comment = comments(:one)
    print @comment.commenter
    print @article.id
  end

  test 'should create comment' do
    assert_difference('Comment.count') do
      post article_comments_url, params: { comment: { commenter: @comment.commenter, body: @comment.body, article_id: @article.id } }
    end
    assert_response :success
  end

  #test 'should destroy comment' do
  #  assert_difference('Comment.count', -1) do
  #    delete comment_url(@comment)
  #  end

  #  assert_response :redirect
  #end
end
