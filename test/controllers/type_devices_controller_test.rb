require 'test_helper'

class TypeDevicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_device = type_devices(:one)
  end

  test "should get index" do
    get type_devices_url
    assert_response :success
  end

  test "should get new" do
    get new_type_device_url
    assert_response :success
  end

  test "should create type_device" do
    assert_difference('TypeDevice.count') do
      post type_devices_url, params: { type_device: { devices_id: @type_device.devices_id } }
    end

    assert_redirected_to type_device_url(TypeDevice.last)
  end

  test "should show type_device" do
    get type_device_url(@type_device)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_device_url(@type_device)
    assert_response :success
  end

  test "should update type_device" do
    patch type_device_url(@type_device), params: { type_device: { devices_id: @type_device.devices_id } }
    assert_redirected_to type_device_url(@type_device)
  end

  test "should destroy type_device" do
    assert_difference('TypeDevice.count', -1) do
      delete type_device_url(@type_device)
    end

    assert_redirected_to type_devices_url
  end
end
