require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = article_categories(:one)
  end

  test 'should get index' do
    get categories_url
    assert_response :success
  end

  test 'should get new' do
    get new_category_url
    assert_response :success
  end

  test 'should create category' do
    assert_difference('Article::Category.count') do
      post categories_url, params: {
        category: {
          name: @category.name,
          slug: @category.slug
        }
      }
    end
    assert_response :redirect
  end

  test 'should show category' do
    get category_url(@category)
    assert_response :success
  end

  test 'should get edit' do
    get edit_category_url(@category)
    assert_response :success
  end

  test 'should update category' do
    print category_url(@category)
    patch category_url(@category), params: {
      category: {
        name: @category.name,
        slug: @category.slug
      }
    }
    assert_response :redirect
  end

  test 'should destroy category' do
    @cat_without_articles = article_categories(:two)
    assert_difference('Article::Category.count', -1) do
      delete category_url(@cat_without_articles)
    end
    assert_response :redirect
  end
end
