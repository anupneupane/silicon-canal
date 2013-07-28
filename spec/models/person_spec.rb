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

  describe "search" do
    it "should find correct companies by name" do
      person1 = create :person, name: "arrow"
      person2 = create :person, name: "dogs"
      Person.search(criteria: "a").should == [person1]
    end
    it "should search by skill" do
      person1 = create(:person, skills: ["qwe"])
      person2 = create(:person, skills: ["asd"])
      Person.search(skill: "qwe").should == [person1]
    end
  end
end
