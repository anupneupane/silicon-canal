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

  describe "create new version" do
    before :each do 
      @person = create :person
      @user = create :user
      @twitter = "#{@person.twitter}-iHiD"
    end
    it "should save user" do
      @person.create_new_version(@user, {twitter: @twitter})
      @version = @person.versions.last
      @version.user.should == @user
    end
    it "should correctly save params" do
      params = {twitter: @twitter}
      @person.create_new_version(@user, params)
      @version = @person.versions.last
      @version.params.should == {twitter: @twitter}
    end
    it "should correctly not save unchanged string" do
      params = {name: @person.name, twitter: @twitter}
      @person.create_new_version(@user, params)
      @version = @person.versions.last
      @version.params.should == {twitter: @twitter}
    end
    it "should correctly not save unchanged hash" do
      params = {skills: "", twitter: @twitter}
      @person.create_new_version(@user, params)
      @version = @person.versions.last
      @version.params.should == {twitter: @twitter}
    end
  end
end
