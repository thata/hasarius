require 'test_helper'

class SpecimenSamplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @specimen_sample = specimen_samples(:one)
  end

  test "should get index" do
    get specimen_samples_url
    assert_response :success
  end

  test "should get new" do
    get new_specimen_sample_url
    assert_response :success
  end

  test "should create specimen_sample" do
    assert_difference('SpecimenSample.count') do
      post specimen_samples_url, params: { specimen_sample: { indivisual_id: @specimen_sample.indivisual_id, institution: @specimen_sample.institution, paper: @specimen_sample.paper, specimen_type: @specimen_sample.specimen_type } }
    end

    assert_redirected_to specimen_sample_url(SpecimenSample.last)
  end

  test "should show specimen_sample" do
    get specimen_sample_url(@specimen_sample)
    assert_response :success
  end

  test "should get edit" do
    get edit_specimen_sample_url(@specimen_sample)
    assert_response :success
  end

  test "should update specimen_sample" do
    patch specimen_sample_url(@specimen_sample), params: { specimen_sample: { indivisual_id: @specimen_sample.indivisual_id, institution: @specimen_sample.institution, paper: @specimen_sample.paper, specimen_type: @specimen_sample.specimen_type } }
    assert_redirected_to specimen_sample_url(@specimen_sample)
  end

  test "should destroy specimen_sample" do
    assert_difference('SpecimenSample.count', -1) do
      delete specimen_sample_url(@specimen_sample)
    end

    assert_redirected_to specimen_samples_url
  end
end
