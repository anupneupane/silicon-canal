require 'spec_helper'

describe SearchController do

  describe "GET index" do
    it "should call search with params" do
      Company.should_receive(:search).with(criteria:"foobar").and_return([])
      Person.should_receive(:search).with(criteria:"foobar").and_return([])
      get :index, {criteria: "foobar", format: :json}
    end

    it "should render html" do
      company = create :company, name: "arrow"
      person = create :person, name: "andy"
      get :index, {criteria: "a", format: :html}
      assigns(:people).should eq([person])
      assigns(:companies).should eq([company])
    end

    it "should render json" do
      company = create :company, name: "arrow"
      person = create :person, name: "andy"
      get :index, {criteria: "a", format: :json}
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
