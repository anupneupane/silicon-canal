require 'spec_helper'

describe "Events" do
  describe "GET /events" do
    it "works with an approved event" do
      create(:event, approved_at: Time.now)
      get events_path
      response.status.should be(200)
    end
    
    it "works with an unapproved event" do
      create(:event, approved_at: nil)
      get events_path
      response.status.should be(200)
    end
  end
end
