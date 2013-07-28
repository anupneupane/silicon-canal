require 'spec_helper'

describe "People" do
  describe "GET /people" do
    it "works" do
      get people_path
      response.status.should be(200)
    end
  end
  describe "GET /people/1" do
    it "works" do
      get person_path create(:person)
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
