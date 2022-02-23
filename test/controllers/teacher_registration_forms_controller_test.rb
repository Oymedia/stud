require "test_helper"

class TeacherRegistrationFormsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teacher_registration_forms_index_url
    assert_response :success
  end
end
