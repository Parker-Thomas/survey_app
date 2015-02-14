require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :redirect
  end

  test "should get create" do
    post :create, question: {question_type: 1}
    assert_response :redirect
  end

  test "should create new question" do
    assert_difference('Question.count') do
      post :create, question: {question_type: 1}
    end

  end
  test "should get edit" do
    get :edit, :id => 3
    assert_response :redirect
  end

  test "should get update" do
    get :update, :id => 3
    assert_response :redirect
  end

  test "should get destroy" do
    delete :destroy, :id => 3
    assert_response :redirect
  end

  test "should get index" do
    get :index
    assert_response :redirect
  end

end
