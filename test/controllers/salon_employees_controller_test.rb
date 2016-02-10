require 'test_helper'

class SalonEmployeesControllerTest < ActionController::TestCase
  setup do
    @salon_employee = salon_employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salon_employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salon_employee" do
    assert_difference('SalonEmployee.count') do
      post :create, salon_employee: { description: @salon_employee.description, name: @salon_employee.name }
    end

    assert_redirected_to salon_employee_path(assigns(:salon_employee))
  end

  test "should show salon_employee" do
    get :show, id: @salon_employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @salon_employee
    assert_response :success
  end

  test "should update salon_employee" do
    patch :update, id: @salon_employee, salon_employee: { description: @salon_employee.description, name: @salon_employee.name }
    assert_redirected_to salon_employee_path(assigns(:salon_employee))
  end

  test "should destroy salon_employee" do
    assert_difference('SalonEmployee.count', -1) do
      delete :destroy, id: @salon_employee
    end

    assert_redirected_to salon_employees_path
  end
end
