require "test_helper"

class TeacherAvailabilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_availability = teacher_availabilities(:one)
  end

  test "should get index" do
    get teacher_availabilities_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_availability_url
    assert_response :success
  end

  test "should create teacher_availability" do
    assert_difference("TeacherAvailability.count") do
      post teacher_availabilities_url, params: { teacher_availability: { day: @teacher_availability.day, tname: @teacher_availability.tname } }
    end

    assert_redirected_to teacher_availability_url(TeacherAvailability.last)
  end

  test "should show teacher_availability" do
    get teacher_availability_url(@teacher_availability)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_availability_url(@teacher_availability)
    assert_response :success
  end

  test "should update teacher_availability" do
    patch teacher_availability_url(@teacher_availability), params: { teacher_availability: { day: @teacher_availability.day, tname: @teacher_availability.tname } }
    assert_redirected_to teacher_availability_url(@teacher_availability)
  end

  test "should destroy teacher_availability" do
    assert_difference("TeacherAvailability.count", -1) do
      delete teacher_availability_url(@teacher_availability)
    end

    assert_redirected_to teacher_availabilities_url
  end
end
