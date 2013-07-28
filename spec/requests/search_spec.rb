require 'spec_helper'

describe "Searching" do
  describe "GET /search" do
    it "works with no results" do
      get search_path
      response.status.should be(200)
    end
    it "works with results" do
      create :company
      create :person
      get search_path
      response.status.should be(200)
    end
  end
end
