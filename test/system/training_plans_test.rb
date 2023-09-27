require "application_system_test_case"

class TrainingPlansTest < ApplicationSystemTestCase
  setup do
    @training_plan = training_plans(:one)
  end

  test "visiting the index" do
    visit training_plans_url
    assert_selector "h1", text: "Training plans"
  end

  test "should create training plan" do
    visit training_plans_url
    click_on "New training plan"

    fill_in "Category", with: @training_plan.category
    fill_in "Description", with: @training_plan.description
    fill_in "Duration", with: @training_plan.duration
    click_on "Create Training plan"

    assert_text "Training plan was successfully created"
    click_on "Back"
  end

  test "should update Training plan" do
    visit training_plan_url(@training_plan)
    click_on "Edit this training plan", match: :first

    fill_in "Category", with: @training_plan.category
    fill_in "Description", with: @training_plan.description
    fill_in "Duration", with: @training_plan.duration
    click_on "Update Training plan"

    assert_text "Training plan was successfully updated"
    click_on "Back"
  end

  test "should destroy Training plan" do
    visit training_plan_url(@training_plan)
    click_on "Destroy this training plan", match: :first

    assert_text "Training plan was successfully destroyed"
  end
end
