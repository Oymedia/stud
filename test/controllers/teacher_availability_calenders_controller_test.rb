require "test_helper"

class TeacherAvailabilityCalendersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_availability_calender = teacher_availability_calenders(:one)
  end

  test "should get index" do
    get teacher_availability_calenders_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_availability_calender_url
    assert_response :success
  end

  test "should create teacher_availability_calender" do
    assert_difference("TeacherAvailabilityCalender.count") do
      post teacher_availability_calenders_url, params: { teacher_availability_calender: { day: @teacher_availability_calender.day, techname: @teacher_availability_calender.techname, time: @teacher_availability_calender.time } }
    end

    assert_redirected_to teacher_availability_calender_url(TeacherAvailabilityCalender.last)
  end

  test "should show teacher_availability_calender" do
    get teacher_availability_calender_url(@teacher_availability_calender)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_availability_calender_url(@teacher_availability_calender)
    assert_response :success
  end

  test "should update teacher_availability_calender" do
    patch teacher_availability_calender_url(@teacher_availability_calender), params: { teacher_availability_calender: { day: @teacher_availability_calender.day, techname: @teacher_availability_calender.techname, time: @teacher_availability_calender.time } }
    assert_redirected_to teacher_availability_calender_url(@teacher_availability_calender)
  end

  test "should destroy teacher_availability_calender" do
    assert_difference("TeacherAvailabilityCalender.count", -1) do
      delete teacher_availability_calender_url(@teacher_availability_calender)
    end

    assert_redirected_to teacher_availability_calenders_url
  end
end
