require 'spec_helper'

describe PersonDecorator do

  it "should correctly calculate image_url" do
    person = stub_model(Person, email: "jez.walker@gmail.com").decorate
    person.image_url.should == "http://www.gravatar.com/avatar/955103d80e386882143a78875fb727bf"
  end

end
