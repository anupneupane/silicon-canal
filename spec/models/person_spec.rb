require 'spec_helper'

describe Person do
  describe "skills" do
    it "should save skills correctly" do
      skills = ["developer", "designer"]
      person = create :person, skills: skills
      person.reload
      person.skills.should == skills
    end
    it "should convert skills from string to array" do
      person = create :person, skills: "developer, designer"
      person.reload
      person.skills.should == ["developer", "designer"]
    end
  end

  it "should correctly calculate image_url" do
    person = stub_model Person, email: "jez.walker@gmail.com"
    person.image_url.should == "http://www.gravatar.com/avatar/955103d80e386882143a78875fb727bf"
  end
end