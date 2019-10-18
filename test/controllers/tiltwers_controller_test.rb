require 'test_helper'

class TiltwersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tiltwer = tiltwers(:one)
  end

  test "should get index" do
    get tiltwers_url
    assert_response :success
  end

  test "should get new" do
    get new_tiltwer_url
    assert_response :success
  end

  test "should create tiltwer" do
    assert_difference('Tiltwer.count') do
      post tiltwers_url, params: { tiltwer: { content: @tiltwer.content, user_id: @tiltwer.user_id } }
    end

    assert_redirected_to tiltwer_url(Tiltwer.last)
  end

  test "should show tiltwer" do
    get tiltwer_url(@tiltwer)
    assert_response :success
  end

  test "should get edit" do
    get edit_tiltwer_url(@tiltwer)
    assert_response :success
  end

  test "should update tiltwer" do
    patch tiltwer_url(@tiltwer), params: { tiltwer: { content: @tiltwer.content, user_id: @tiltwer.user_id } }
    assert_redirected_to tiltwer_url(@tiltwer)
  end

  test "should destroy tiltwer" do
    assert_difference('Tiltwer.count', -1) do
      delete tiltwer_url(@tiltwer)
    end

    assert_redirected_to tiltwers_url
  end
end
