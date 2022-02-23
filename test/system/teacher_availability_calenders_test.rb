require "application_system_test_case"

class TeacherAvailabilityCalendersTest < ApplicationSystemTestCase
  setup do
    @teacher_availability_calender = teacher_availability_calenders(:one)
  end

  test "visiting the index" do
    visit teacher_availability_calenders_url
    assert_selector "h1", text: "Teacher availability calenders"
  end

  test "should create teacher availability calender" do
    visit teacher_availability_calenders_url
    click_on "New teacher availability calender"

    fill_in "Day", with: @teacher_availability_calender.day
    fill_in "Techname", with: @teacher_availability_calender.techname
    fill_in "Time", with: @teacher_availability_calender.time
    click_on "Create Teacher availability calender"

    assert_text "Teacher availability calender was successfully created"
    click_on "Back"
  end

  test "should update Teacher availability calender" do
    visit teacher_availability_calender_url(@teacher_availability_calender)
    click_on "Edit this teacher availability calender", match: :first

    fill_in "Day", with: @teacher_availability_calender.day
    fill_in "Techname", with: @teacher_availability_calender.techname
    fill_in "Time", with: @teacher_availability_calender.time
    click_on "Update Teacher availability calender"

    assert_text "Teacher availability calender was successfully updated"
    click_on "Back"
  end

  test "should destroy Teacher availability calender" do
    visit teacher_availability_calender_url(@teacher_availability_calender)
    click_on "Destroy this teacher availability calender", match: :first

    assert_text "Teacher availability calender was successfully destroyed"
  end
end
