require 'test_helper'

class UserCanCreateFaceTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "user can create a face" do
    visit new_face_path
    fill_in "face_shape", with: "oblong"
    click_on "Create Face"

    page.has_content? "oblong"
    assert_equal 1, Face.all.count
  end
end
