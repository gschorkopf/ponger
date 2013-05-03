require 'spec_helper'

describe "matches/edit" do
  before(:each) do
    @match = assign(:match, stub_model(Match,
      :winner => "MyString",
      :loser => "MyString"
    ))
  end

  it "renders the edit match form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", match_path(@match), "post" do
      assert_select "input#match_winner[name=?]", "match[winner]"
      assert_select "input#match_loser[name=?]", "match[loser]"
    end
  end
end
