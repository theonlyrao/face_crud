require 'test_helper'

class UserCanDeleteFaceTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "user can delete a face" do
    target = Face.create(shape: "riptide")

    visit faces_path
    click_on "riptide"
    click_on "Delete Face"

    assert current_path, faces_path
    refute page.has_content?("riptide")
    assert_equal 0, Face.all.count
  end
end
