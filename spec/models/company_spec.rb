require 'spec_helper'

describe Company do
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
