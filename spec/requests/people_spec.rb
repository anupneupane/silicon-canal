require 'spec_helper'

describe "People" do
  describe "GET /people" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get people_path
      response.status.should be(200)
    end

    it "should require login" do
      company = create :company
      [new_company_path, edit_company_path(company)].each do |url|
        get new_company_path
        response.should redirect_to new_user_session_path
      end
    end
  end
end
