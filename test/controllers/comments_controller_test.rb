require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment = comments(:one)
  end

  test 'should get index' do
    get comments_url
    assert_response :success
  end

  test 'should get new' do
    get new_comment_url
    assert_response :success
  end

  test 'should create comment' do
    assert_difference('Comment.count') do
      post comments_url, params: { comment: { commenter: @comment.title, body: @comment.text } }
    end
    assert_response :redirect
  end

  test 'should show comment' do
    get comment_url(@comment)
    assert_response :success
  end

  test 'should get edit' do
    get edit_comment_url(@comment)
    assert_response :success
  end

  test 'should update comment' do
    patch comment_url(@comment), params: { comment: { commenter: @comment.title, body: @comment.text } }
    assert_response :redirect
  end

  test 'should destroy comment' do
    assert_difference('Comment.count', -1) do
      delete comment_url(@comment)
    end

    assert_response :redirect
  end
end
