require 'test_helper'

class UserCanUpdateFaceTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "user can update a face" do
    target = Face.create(shape: "square")
    visit faces_path

    click_on "square"
    click_on "Edit"

    fill_in "face_shape", with: "round"
    click_on "Update Face"

    assert_equal current_path, face_path(target.id)
    assert page.has_content?("round")
    refute page.has_content?("squre")

  end
end
