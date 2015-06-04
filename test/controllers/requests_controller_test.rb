require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  setup do
    @test_request = requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post :create, request: { days: @test_request.days, firstname: @test_request.firstname, lastname: @test_request.lastname, out_of_country: @test_request.out_of_country }
    end

    assert_redirected_to request_path(assigns(:request))
  end

  test "should show request" do
    get :show, id: @test_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_request
    assert_response :success
  end

  test "should update request" do
    patch :update, id: @test_request, request: { days: @test_request.days, firstname: @test_request.firstname, lastname: @test_request.lastname, out_of_country: @test_request.out_of_country }
    assert_redirected_to request_path(assigns(:request))
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete :destroy, id: @test_request
    end

    assert_redirected_to requests_path
  end
end
