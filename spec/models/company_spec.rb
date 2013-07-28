require 'spec_helper'

describe Company do
  it "should save tags correctly" do
    tags = ["agency", "startup"]
    company = create :company, tags: tags
    company.reload
    company.tags.should == tags
  end
end
