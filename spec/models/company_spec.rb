require 'spec_helper'

describe Company do
  describe "search" do
    it "should find correct companies by name" do
      company1 = create :company, name: "arrow"
      company2 = create :company, name: "dogs"
      Company.search(criteria: "a").should == [company1]
    end

    it "should filter by tag" do
      company1 = create(:company, tags: ["qwe"])
      company2 = create(:company, tags: ["asd"])
      Company.search(tag: "qwe").should == [company1]
    end
  end

  describe "tags" do
    it "should save tags correctly" do
      tags = ["agency", "startup"]
      company = create :company, tags: tags
      company.reload
      company.tags.should == tags
    end
    
    it "should convert tags from string to array" do
      company = create :company, tags: "agency, startup"
      company.reload
      company.tags.should == ["agency", "startup"]
    end
  end
end
