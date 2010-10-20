require 'spec_helper'

describe CarreirasController do

  #Delete these examples and add some real ones
  it "should use CarreirasController" do
    controller.should be_an_instance_of(CarreirasController)
  end


  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end
end
