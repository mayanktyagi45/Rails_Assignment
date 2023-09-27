require "test_helper"

class TrainingPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training_plan = training_plans(:one)
  end

  test "should get index" do
    get training_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_training_plan_url
    assert_response :success
  end

  test "should create training_plan" do
    assert_difference("TrainingPlan.count") do
      post training_plans_url, params: { training_plan: { category: @training_plan.category, description: @training_plan.description, duration: @training_plan.duration } }
    end

    assert_redirected_to training_plan_url(TrainingPlan.last)
  end

  test "should show training_plan" do
    get training_plan_url(@training_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_training_plan_url(@training_plan)
    assert_response :success
  end

  test "should update training_plan" do
    patch training_plan_url(@training_plan), params: { training_plan: { category: @training_plan.category, description: @training_plan.description, duration: @training_plan.duration } }
    assert_redirected_to training_plan_url(@training_plan)
  end

  test "should destroy training_plan" do
    assert_difference("TrainingPlan.count", -1) do
      delete training_plan_url(@training_plan)
    end

    assert_redirected_to training_plans_url
  end
end
