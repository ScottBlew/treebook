require 'test_helper'

  class CustomRoutesTest < ActionDispatch::IntegrationTest
    test "test the /login route opens the login page" do 
    get '/signin'
    assert_response :success
  end
  
    test "test the /logout route" do 
    get '/logout'
    assert_response :redirect
    assert_redirected_to '/'
  end
  
    test "test the /signup route" do 
    get '/signup'
    assert_response :success
  end

end
