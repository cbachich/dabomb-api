require 'test_helper'

class AnnotationsControllerTest < ActionController::TestCase
  setup do
    @annotation = annotations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:annotations)
  end

  test "should create annotation" do
    assert_difference('Annotation.count') do
      post :create, annotation: { active: @annotation.active, color: @annotation.color, display: @annotation.display, end_video: @annotation.end_video, left_align: @annotation.left_align, start_video: @annotation.start_video, text: @annotation.text, top_align: @annotation.top_align }
    end

    assert_response 201
  end

  test "should show annotation" do
    get :show, id: @annotation
    assert_response :success
  end

  test "should update annotation" do
    put :update, id: @annotation, annotation: { active: @annotation.active, color: @annotation.color, display: @annotation.display, end_video: @annotation.end_video, left_align: @annotation.left_align, start_video: @annotation.start_video, text: @annotation.text, top_align: @annotation.top_align }
    assert_response 204
  end

  test "should destroy annotation" do
    assert_difference('Annotation.count', -1) do
      delete :destroy, id: @annotation
    end

    assert_response 204
  end
end
