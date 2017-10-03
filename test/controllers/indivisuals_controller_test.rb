require 'test_helper'

class IndivisualsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @indivisual = indivisuals(:one)
  end

  test "should get index" do
    get indivisuals_url
    assert_response :success
  end

  test "should get new" do
    get new_indivisual_url
    assert_response :success
  end

  test "should create indivisual" do
    assert_difference('Indivisual.count') do
      post indivisuals_url, params: { indivisual: { country: @indivisual.country, organism_id: @indivisual.organism_id, sampling_date: @indivisual.sampling_date, sex: @indivisual.sex, size: @indivisual.size } }
    end

    assert_redirected_to indivisual_url(Indivisual.last)
  end

  test "should show indivisual" do
    get indivisual_url(@indivisual)
    assert_response :success
  end

  test "should get edit" do
    get edit_indivisual_url(@indivisual)
    assert_response :success
  end

  test "should update indivisual" do
    patch indivisual_url(@indivisual), params: { indivisual: { country: @indivisual.country, organism_id: @indivisual.organism_id, sampling_date: @indivisual.sampling_date, sex: @indivisual.sex, size: @indivisual.size } }
    assert_redirected_to indivisual_url(@indivisual)
  end

  test "should destroy indivisual" do
    assert_difference('Indivisual.count', -1) do
      delete indivisual_url(@indivisual)
    end

    assert_redirected_to indivisuals_url
  end
end
