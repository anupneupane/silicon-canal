require 'spec_helper'

describe "companies/show" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :name => "Name",
      :description => "MyText",
      :url => "Url",
      :twitter => "Twitter",
      :category_id => 1,
      :tags => "Tags",
      :crunchbase => "Crunchbase",
      :address => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Url/)
    rendered.should match(/Twitter/)
    rendered.should match(/1/)
    rendered.should match(/Tags/)
    rendered.should match(/Crunchbase/)
    rendered.should match(/MyText/)
  end
end
