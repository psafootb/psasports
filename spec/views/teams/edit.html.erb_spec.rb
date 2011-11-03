require 'spec_helper'

describe "teams/edit.html.erb" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :user_id => 1,
      :name => "MyString",
      :city => "MyString",
      :state => "MyString",
      :organization => "MyString",
      :sport => "MyString"
    ))
  end

  it "renders the edit team form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teams_path(@team), :method => "post" do
      assert_select "input#team_user_id", :name => "team[user_id]"
      assert_select "input#team_name", :name => "team[name]"
      assert_select "input#team_city", :name => "team[city]"
      assert_select "input#team_state", :name => "team[state]"
      assert_select "input#team_organization", :name => "team[organization]"
      assert_select "input#team_sport", :name => "team[sport]"
    end
  end
end
