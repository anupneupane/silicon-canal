require 'spec_helper'

describe Person do
  it "should save skills correctly" do
    skills = ["developer", "designer"]
    person = create :person, skills: skills
    person.reload
    person.skills.should == skills
  end

  it "should correctly calculate image_url" do
    person = stub_model Person, email: "jez.walker@gmail.com"
    person.image_url.should == "http://www.gravatar.com/avatar/955103d80e386882143a78875fb727bf"
  end
end
