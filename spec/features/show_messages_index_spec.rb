require 'rails_helper'

describe "the show message list process" do
  it "should list of messages on page" do
    message = FactoryGirl.create(:message, :body => "success")
    visit messages_path
    expect(page).to have_content("success")
  end

  it "should show text to" do
    message = FactoryGirl.create(:message, :to => "9714445555")
    visit messages_path
    expect(page).to have_content("9714445555")
  end

  it "should show text from" do
    message = FactoryGirl.create(:message, :to => "9715551212")
    visit messages_path
    expect(page).to have_content("9715551212")
  end
  
end
