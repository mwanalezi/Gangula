require 'spec_helper'

describe "/cursos/new" do
  before(:each) do
    render 'cursos/new'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/cursos/new])
  end
end