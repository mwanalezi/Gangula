require 'spec_helper'

describe "/municipios/creade" do
  before(:each) do
    render 'municipios/creade'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/municipios/creade])
  end
end
