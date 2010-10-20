require 'spec_helper'

describe "/municipios/update" do
  before(:each) do
    render 'municipios/update'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/municipios/update])
  end
end
