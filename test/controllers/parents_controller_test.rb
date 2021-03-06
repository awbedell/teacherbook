require 'test_helper'
require 'parents_controller.rb'
class ParentsController < ApplicationController
  private def logged_in?
    true
  end
end

class ParentsControllerTest < ActionController::TestCase
  setup do
    @parent = parents(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parent" do
    assert_difference('Parent.count') do
      post :create, parent: { answers_phone_if_from_school: @parent.answers_phone_if_from_school, email: @parent.email, has_respect_for_teachers: @parent.has_respect_for_teachers, name: @parent.name, phone_number: @parent.phone_number, student_id: @parent.student_id }
    end

    assert_redirected_to parent_path(assigns(:parent))
  end

  test "should show parent" do
    get :show, id: @parent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parent
    assert_response :success
  end

  test "should update parent" do
    patch :update, id: @parent, parent: { answers_phone_if_from_school: @parent.answers_phone_if_from_school, email: @parent.email, has_respect_for_teachers: @parent.has_respect_for_teachers, name: @parent.name, phone_number: @parent.phone_number, student_id: @parent.student_id }
    assert_redirected_to parent_path(assigns(:parent))
  end

  test "should destroy parent" do
    assert_difference('Parent.count', -1) do
      delete :destroy, id: @parent
    end

    assert_redirected_to parents_path
  end
end
