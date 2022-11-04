require 'test_helper'

class MyningTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myning_type = myning_types(:one)
  end

  test "should get index" do
    get myning_types_url
    assert_response :success
  end

  test "should get new" do
    get new_myning_type_url
    assert_response :success
  end

  test "should create myning_type" do
    assert_difference('MyningType.count') do
      post myning_types_url, params: { myning_type: { acromym: @myning_type.acromym, description: @myning_type.description } }
    end

    assert_redirected_to myning_type_url(MyningType.last)
  end

  test "should show myning_type" do
    get myning_type_url(@myning_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_myning_type_url(@myning_type)
    assert_response :success
  end

  test "should update myning_type" do
    patch myning_type_url(@myning_type), params: { myning_type: { acromym: @myning_type.acromym, description: @myning_type.description } }
    assert_redirected_to myning_type_url(@myning_type)
  end

  test "should destroy myning_type" do
    assert_difference('MyningType.count', -1) do
      delete myning_type_url(@myning_type)
    end

    assert_redirected_to myning_types_url
  end
end
