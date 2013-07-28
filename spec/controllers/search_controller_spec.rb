require 'spec_helper'

describe SearchController do

  describe "GET index" do
    it "should call search with params" do
      Company.should_receive(:search).with(criteria:"foobar").and_return([])
      Person.should_receive(:search).with(criteria:"foobar").and_return([])
      get :index, {criteria: "foobar"}
    end

    it "should find companies" do
      company = create :company, name: "arrow"
      person = create :person, name: "andy"
      get :index, {criteria: "a"}
      expected = {
        companies: [{
          id: company.id,
          name: company.name
        }],
        people: [{
          id: person.id,
          name: person.name
        }]
      }.to_json
      response.body.should == expected
    end
  end
end
