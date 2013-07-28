require 'spec_helper'

describe "Companies" do
  describe "GET /companies" do
    it "works! (now write some real specs)" do
      get companies_path
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
