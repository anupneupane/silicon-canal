require 'spec_helper'

describe "people/show" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :name => "Name",
      :bio => "MyText",
      :twitter => "Twitter",
      :linkedin => "Linkedin",
      :url => "Url",
      :skills => "Skills",
      :email => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Twitter/)
    rendered.should match(/Linkedin/)
    rendered.should match(/Url/)
    rendered.should match(/Skills/)
    rendered.should match(/MyText/)
  end
end
