require 'test_helper'

class ResponsesControllerTest < ActionController::TestCase
<<<<<<< HEAD
=======
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

>>>>>>> 9b52cdeb5a0b3146fc703e405a93f42c783634d7
  test "should get new" do
    get :new
    assert_response :success
  end

<<<<<<< HEAD
  test "should get create" do
    get :create
=======
  test "should get edit" do
    get :edit
>>>>>>> 9b52cdeb5a0b3146fc703e405a93f42c783634d7
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

<<<<<<< HEAD
  test "should get edit" do
    get :edit
=======
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
>>>>>>> 9b52cdeb5a0b3146fc703e405a93f42c783634d7
    assert_response :success
  end

end
