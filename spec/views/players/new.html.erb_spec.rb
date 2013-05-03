require 'spec_helper'

describe "players/new" do
  before(:each) do
    assign(:player, stub_model(Player,
      :name => "MyString",
      :company => "MyString",
      :score => 1,
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", players_path, "post" do
      assert_select "input#player_name[name=?]", "player[name]"
      assert_select "input#player_company[name=?]", "player[company]"
      assert_select "input#player_score[name=?]", "player[score]"
      assert_select "input#player_email[name=?]", "player[email]"
    end
  end
end
