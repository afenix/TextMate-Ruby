require 'rails_helper'

describe 'add new message process' do

  it 'creates a new message' do
    visit messages_path
    click_on "Send new text"
    fill_in "To", :with => "1112224444"
    fill_in "From", :with => "5551212121"
    fill_in "Body", :with => "Did it work?"
    click_on "Send Text"
    expect(page).to have_content "Did it work?"
  end
end
