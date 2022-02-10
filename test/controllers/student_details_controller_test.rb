require "test_helper"

class StudentDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student_details_index_url
    assert_response :success
  end
end
