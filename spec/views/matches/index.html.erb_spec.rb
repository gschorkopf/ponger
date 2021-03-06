require 'spec_helper'

describe "matches/index" do
  before(:each) do
    assign(:matches, [
      stub_model(Match,
        :winner => "Winner",
        :loser => "Loser"
      ),
      stub_model(Match,
        :winner => "Winner",
        :loser => "Loser"
      )
    ])
  end

  it "renders a list of matches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Winner".to_s, :count => 2
    assert_select "tr>td", :text => "Loser".to_s, :count => 2
  end
end
