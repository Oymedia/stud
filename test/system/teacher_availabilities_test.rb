require "application_system_test_case"

class TeacherAvailabilitiesTest < ApplicationSystemTestCase
  setup do
    @teacher_availability = teacher_availabilities(:one)
  end

  test "visiting the index" do
    visit teacher_availabilities_url
    assert_selector "h1", text: "Teacher availabilities"
  end

  test "should create teacher availability" do
    visit teacher_availabilities_url
    click_on "New teacher availability"

    fill_in "Day", with: @teacher_availability.day
    fill_in "Tname", with: @teacher_availability.tname
    click_on "Create Teacher availability"

    assert_text "Teacher availability was successfully created"
    click_on "Back"
  end

  test "should update Teacher availability" do
    visit teacher_availability_url(@teacher_availability)
    click_on "Edit this teacher availability", match: :first

    fill_in "Day", with: @teacher_availability.day
    fill_in "Tname", with: @teacher_availability.tname
    click_on "Update Teacher availability"

    assert_text "Teacher availability was successfully updated"
    click_on "Back"
  end

  test "should destroy Teacher availability" do
    visit teacher_availability_url(@teacher_availability)
    click_on "Destroy this teacher availability", match: :first

    assert_text "Teacher availability was successfully destroyed"
  end
end
