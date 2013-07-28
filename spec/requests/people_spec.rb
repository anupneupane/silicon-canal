require 'spec_helper'

describe "People" do
  describe "GET /people" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get people_path
      response.status.should be(200)
    end
  end
  it "should require login" do
    person = create :person
    [new_person_path, edit_person_path(person)].each do |url|
      get new_person_path
      response.should redirect_to new_user_session_path
    end
  end

end
