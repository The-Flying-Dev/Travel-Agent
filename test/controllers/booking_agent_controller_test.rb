require "test_helper"

class BookingAgentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get booking_agent_index_url
    assert_response :success
  end
end
