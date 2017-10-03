require 'test_helper'

class MechanicalPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mechanical_property = mechanical_properties(:one)
  end

  test "should get index" do
    get mechanical_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_mechanical_property_url
    assert_response :success
  end

  test "should create mechanical_property" do
    assert_difference('MechanicalProperty.count') do
      post mechanical_properties_url, params: { mechanical_property: { silk_sample_id: @mechanical_property.silk_sample_id, toughness: @mechanical_property.toughness, toughness_sd: @mechanical_property.toughness_sd } }
    end

    assert_redirected_to mechanical_property_url(MechanicalProperty.last)
  end

  test "should show mechanical_property" do
    get mechanical_property_url(@mechanical_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_mechanical_property_url(@mechanical_property)
    assert_response :success
  end

  test "should update mechanical_property" do
    patch mechanical_property_url(@mechanical_property), params: { mechanical_property: { silk_sample_id: @mechanical_property.silk_sample_id, toughness: @mechanical_property.toughness, toughness_sd: @mechanical_property.toughness_sd } }
    assert_redirected_to mechanical_property_url(@mechanical_property)
  end

  test "should destroy mechanical_property" do
    assert_difference('MechanicalProperty.count', -1) do
      delete mechanical_property_url(@mechanical_property)
    end

    assert_redirected_to mechanical_properties_url
  end
end
