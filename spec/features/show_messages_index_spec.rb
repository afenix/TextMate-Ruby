require 'rails_helper'

describe "the show message list process", :vcr => true do
  it "should list of messages on page" do
    message = FactoryGirl.create(:message, :body => "success")
    visit messages_path
    expect(page).to have_content("success")
  end

  it "should show text to" do
    message = FactoryGirl.create(:message)
    visit messages_path
    expect(page).to have_content("9716789823")
  end

  it "should show text from" do
    message = FactoryGirl.create(:message)
    visit messages_path
    expect(page).to have_content("5038223444")
  end

end
