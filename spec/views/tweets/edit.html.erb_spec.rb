require 'spec_helper'

describe "tweets/edit" do
  before(:each) do
    @tweet = assign(:tweet, stub_model(Tweet,
      :text => "MyString",
      :link => "MyString",
      :tweet_id => "MyString"
    ))
  end

  it "renders the edit tweet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tweet_path(@tweet), "post" do
      assert_select "input#tweet_text[name=?]", "tweet[text]"
      assert_select "input#tweet_link[name=?]", "tweet[link]"
      assert_select "input#tweet_tweet_id[name=?]", "tweet[tweet_id]"
    end
  end
end
