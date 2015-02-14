require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  setup do
    @survey = surveys(:one)
    @author = Author.create(name: "jim", password:"dogs")
    @survey.update_attribute(:author, @author)
    session[:user_id] = @author.id

  end

  test "should get index" do

    get :index
    assert_response :success
    assert_not_nil assigns(:surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey" do
    assert_difference('Survey.count') do
      post :create, survey: { author_id: @survey.author_id, description: @survey.description, title: @survey.title}
    end

    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should create survey with a question" do
    assert_difference('Question.count') do
      post :create, survey: { author_id: @survey.author_id, description: @survey.description, title: @survey.title, questions: [Question.create]}
    end

    assert_redirected_to survey_path(assigns(:survey))
  end



  test "should show survey" do
    get :show, id: @survey.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey
    assert_response :success
  end

  test "should update survey" do
    patch :update, id: @survey, survey: { author_id: @survey.author_id, description: @survey.description, title: @survey.title }
    assert_redirected_to authors_path
  end

  test "should destroy survey" do
    assert_difference('Survey.count', -1) do
      delete :destroy, id: @survey
    end

    assert_redirected_to surveys_path
  end
end
