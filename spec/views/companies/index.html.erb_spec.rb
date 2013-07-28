require 'spec_helper'

describe "companies/index" do
  before(:each) do
    assign(:companies, [
      stub_model(Company,
        :name => "Name",
        :description => "MyText",
        :url => "Url",
        :twitter => "Twitter",
        :category_id => 1,
        :tags => "Tags",
        :crunchbase => "Crunchbase",
        :address => "MyText"
      ),
      stub_model(Company,
        :name => "Name",
        :description => "MyText",
        :url => "Url",
        :twitter => "Twitter",
        :category_id => 1,
        :tags => "Tags",
        :crunchbase => "Crunchbase",
        :address => "MyText"
      )
    ])
  end

  it "renders a list of companies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
    assert_select "tr>td", :text => "Crunchbase".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
