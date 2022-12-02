# frozen_string_literal: true

require 'test_helper'

class CalcControllerTest < ActionDispatch::IntegrationTest
  test 'should get input' do
    get calc_input_url
    assert_response :success
  end

  test 'should get view' do
    get calc_view_url
    assert_response :success
  end

  test 'should get 1 for view with 1' do
    get '/calc/view', params: { num: 1 }
    assert_equal(assigns[:result], [1])
  end

  test 'should get 1, 5, 6, 25, 76 for view with 100' do
    get '/calc/view', params: { num: 100 }
    assert_equal(assigns[:result], [1, 5, 6, 25, 76])
  end

  test 'should get 1, 5, 6, 25 for view with 50' do
    get '/calc/view', params: { num: 50 }
    assert_equal(assigns[:result], [1, 5, 6, 25])
  end

  # test 'should get xml type' do
  #   get 'calc/view', params: {num: 1}
  #   assert_equal(type(:result), :xml)
  # end
end
