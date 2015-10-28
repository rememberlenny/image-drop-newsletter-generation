require 'test_helper'

class IntroexamsControllerTest < ActionController::TestCase
  setup do
    @introexam = introexams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:introexams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create introexam" do
    assert_difference('Introexam.count') do
      post :create, introexam: { message: @introexam.message, picture1: @introexam.picture1, picture2: @introexam.picture2, picture3: @introexam.picture3, testimonial1: @introexam.testimonial1, testimonial2: @introexam.testimonial2, testimonial3: @introexam.testimonial3, title: @introexam.title }
    end

    assert_redirected_to introexam_path(assigns(:introexam))
  end

  test "should show introexam" do
    get :show, id: @introexam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @introexam
    assert_response :success
  end

  test "should update introexam" do
    patch :update, id: @introexam, introexam: { message: @introexam.message, picture1: @introexam.picture1, picture2: @introexam.picture2, picture3: @introexam.picture3, testimonial1: @introexam.testimonial1, testimonial2: @introexam.testimonial2, testimonial3: @introexam.testimonial3, title: @introexam.title }
    assert_redirected_to introexam_path(assigns(:introexam))
  end

  test "should destroy introexam" do
    assert_difference('Introexam.count', -1) do
      delete :destroy, id: @introexam
    end

    assert_redirected_to introexams_path
  end
end
