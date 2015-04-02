require 'rails_helper'

describe Message, :vcr => true do
  it { should validate_presence_of :body }
  it { should validate_presence_of :to }
  it { should validate_presence_of :from }
  it { should have_and_belong_to_many :contacts }

  it "will return the body of a text from the user" do
    message = FactoryGirl.build(:message, :body => "Test123")
    expect(message.body).to eq "Test123"
  end

  it "will return the 'to' of a text from a user" do
    message = FactoryGirl.build(:message, :to => "5034528963")
    expect(message.to).to eq "5034528963"
  end

  it "will return the 'from' of a text from a user" do
    message = FactoryGirl.build(:message, :from => "8475213698")
    expect(message.from).to eq "8475213698"
  end

  it "doesn't save the message if twilio gives an error" do
    message = FactoryGirl.build(:message, :to => '111222')
    message.save.should be false
  end

  it "will save the message if twilia numbers are valid" do
    message = FactoryGirl.build(:message)
    message.save.should be true
  end

end
