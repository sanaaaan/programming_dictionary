require "test_helper"

class ProgrammingTermsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get programming_terms_index_url
    assert_response :success
  end
end
