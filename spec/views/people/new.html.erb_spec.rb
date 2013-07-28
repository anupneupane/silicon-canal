require 'spec_helper'

describe "people/new" do
  before(:each) do
    assign(:person, stub_model(Person,
      :name => "MyString",
      :bio => "MyText",
      :twitter => "MyString",
      :linkedin => "MyString",
      :url => "MyString",
      :skills => "MyString",
      :email => "MyText"
    ).as_new_record)
  end

  it "renders new person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", people_path, "post" do
      assert_select "input#person_name[name=?]", "person[name]"
      assert_select "textarea#person_bio[name=?]", "person[bio]"
      assert_select "input#person_twitter[name=?]", "person[twitter]"
      assert_select "input#person_linkedin[name=?]", "person[linkedin]"
      assert_select "input#person_url[name=?]", "person[url]"
      assert_select "input#person_skills[name=?]", "person[skills]"
      assert_select "textarea#person_email[name=?]", "person[email]"
    end
  end
end
