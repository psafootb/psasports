require 'spec_helper'

describe "teams/index.html.erb" do
  before(:each) do
    assign(:teams, [
      stub_model(Team,
        :user_id => 1,
        :name => "Name",
        :city => "City",
        :state => "State",
        :organization => "Organization",
        :sport => "Sport"
      ),
      stub_model(Team,
        :user_id => 1,
        :name => "Name",
        :city => "City",
        :state => "State",
        :organization => "Organization",
        :sport => "Sport"
      )
    ])
  end

  it "renders a list of teams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Organization".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sport".to_s, :count => 2
  end
end
