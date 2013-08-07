require "spec_helper"

describe EventDecorator do
  
  describe "approval_link" do
    it "should crate correct link for an approved event" do
      event1 = create(:event, approved_at: Time.now).decorate
      event1.approval_link.should == "<a data-method=\"post\" href=\"/events/1/unapprove\" rel=\"nofollow\">Unapprove</a>"
    end
    
    it "should crate correct link for an unapproved event" do
      event1 = create(:event, approved_at: nil).decorate
      event1.approval_link.should == "<a data-method=\"post\" href=\"/events/1/approve\" rel=\"nofollow\">Approve</a>"
    end
  end
  
end