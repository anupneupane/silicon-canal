require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :name => "MyString",
      :description => "MyText",
      :location => "MyString",
      :website => "MyString",
      :created_by => 1,
      :updated_by => 1
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", event_path(@event), "post" do
      assert_select "input#event_name[name=?]", "event[name]"
      assert_select "textarea#event_description[name=?]", "event[description]"
      assert_select "input#event_location[name=?]", "event[location]"
      assert_select "input#event_website[name=?]", "event[website]"
      assert_select "input#event_created_by[name=?]", "event[created_by]"
      assert_select "input#event_updated_by[name=?]", "event[updated_by]"
    end
  end
end