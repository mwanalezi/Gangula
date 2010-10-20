require 'spec_helper'

describe ProvinciasController do

  #Delete these examples and add some real ones
  it "should use ProvinciasController" do
    controller.should be_an_instance_of(ProvinciasController)
  end


  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end
end
