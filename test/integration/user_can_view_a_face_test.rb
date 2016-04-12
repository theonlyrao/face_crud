require 'test_helper'

class UserCanViewAFaceTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "user can view a face" do
    target = Face.create(shape: "square")
    visit faces_path

    assert page.has_content?("square")

    click_on "square"
    assert_equal current_path, face_path(target.id)
    assert page.has_content?("Shape: square")
  end
end
