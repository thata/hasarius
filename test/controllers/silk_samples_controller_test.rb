require 'test_helper'

class SilkSamplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @silk_sample = silk_samples(:one)
  end

  test "should get index" do
    get silk_samples_url
    assert_response :success
  end

  test "should get new" do
    get new_silk_sample_url
    assert_response :success
  end

  test "should create silk_sample" do
    assert_difference('SilkSample.count') do
      post silk_samples_url, params: { silk_sample: { indivisual_id: @silk_sample.indivisual_id, institution: @silk_sample.institution, paper: @silk_sample.paper, silk_type: @silk_sample.silk_type } }
    end

    assert_redirected_to silk_sample_url(SilkSample.last)
  end

  test "should show silk_sample" do
    get silk_sample_url(@silk_sample)
    assert_response :success
  end

  test "should get edit" do
    get edit_silk_sample_url(@silk_sample)
    assert_response :success
  end

  test "should update silk_sample" do
    patch silk_sample_url(@silk_sample), params: { silk_sample: { indivisual_id: @silk_sample.indivisual_id, institution: @silk_sample.institution, paper: @silk_sample.paper, silk_type: @silk_sample.silk_type } }
    assert_redirected_to silk_sample_url(@silk_sample)
  end

  test "should destroy silk_sample" do
    assert_difference('SilkSample.count', -1) do
      delete silk_sample_url(@silk_sample)
    end

    assert_redirected_to silk_samples_url
  end
end
