require "application_system_test_case"

class MyningTypesTest < ApplicationSystemTestCase
  setup do
    @myning_type = myning_types(:one)
  end

  test "visiting the index" do
    visit myning_types_url
    assert_selector "h1", text: "Myning Types"
  end

  test "creating a Myning type" do
    visit myning_types_url
    click_on "New Myning Type"

    fill_in "Acromym", with: @myning_type.acromym
    fill_in "Description", with: @myning_type.description
    click_on "Create Myning type"

    assert_text "Myning type was successfully created"
    click_on "Back"
  end

  test "updating a Myning type" do
    visit myning_types_url
    click_on "Edit", match: :first

    fill_in "Acromym", with: @myning_type.acromym
    fill_in "Description", with: @myning_type.description
    click_on "Update Myning type"

    assert_text "Myning type was successfully updated"
    click_on "Back"
  end

  test "destroying a Myning type" do
    visit myning_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Myning type was successfully destroyed"
  end
end
