require 'spec_helper'

describe SearchController do

  describe "GET index" do
    it "should call search with params" do
      Company.should_receive(:search).with("foobar").and_return([])
      get :index, {criteria: "foobar"}
    end

    it "should find companies" do
      company = create :company, name: "arrow"
      get :index, {criteria: "a"}
      expected = {companies: [{
        id: company.id,
        name: company.name
      }]}.to_json
      response.body.should == expected
    end
  end
end
