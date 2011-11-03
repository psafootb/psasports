require 'spec_helper'

describe "teams/show.html.erb" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :user_id => 1,
      :name => "Name",
      :city => "City",
      :state => "State",
      :organization => "Organization",
      :sport => "Sport"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Organization/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sport/)
  end
end
