require 'test_helper'

class DisksControllerTest < ActionController::TestCase
  setup do
    @disk = disks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disk" do
    assert_difference('Disk.count') do
      post :create, disk: { name: @disk.name, size: @disk.size }
    end

    assert_redirected_to disk_path(assigns(:disk))
  end

  test "should show disk" do
    get :show, id: @disk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disk
    assert_response :success
  end

  test "should update disk" do
    put :update, id: @disk, disk: { name: @disk.name, size: @disk.size }
    assert_redirected_to disk_path(assigns(:disk))
  end

  test "should destroy disk" do
    assert_difference('Disk.count', -1) do
      delete :destroy, id: @disk
    end

    assert_redirected_to disks_path
  end
end
