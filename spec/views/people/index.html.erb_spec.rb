require 'spec_helper'

describe "people/index" do
  before(:each) do
    assign(:people, [
      stub_model(Person,
        :name => "Name",
        :bio => "MyText",
        :twitter => "Twitter",
        :linkedin => "Linkedin",
        :url => "Url",
        :skills => "Skills",
        :email => "MyText"
      ),
      stub_model(Person,
        :name => "Name",
        :bio => "MyText",
        :twitter => "Twitter",
        :linkedin => "Linkedin",
        :url => "Url",
        :skills => "Skills",
        :email => "MyText"
      )
    ])
  end

  it "renders a list of people" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Linkedin".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Skills".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
