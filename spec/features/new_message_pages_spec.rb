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

  it 'shows an error when To is not filled in' do
    visit messages_path
    click_on "Send new text"
    fill_in "To", :with => ""
    fill_in "From", :with => "5551212121"
    fill_in "Body", :with => "Did it work?"
    click_on "Send Text"
    expect(page).to have_content "errors"
  end

  it 'shows an error when From is not filled in' do
    visit messages_path
    click_on "Send new text"
    fill_in "To", :with => "5551212121"
    fill_in "From", :with => ""
    fill_in "Body", :with => "Did it work?"
    click_on "Send Text"
    expect(page).to have_content "errors"
  end

  it 'shows an error when Body is not filled in' do
    visit messages_path
    click_on "Send new text"
    fill_in "To", :with => "5551212121"
    fill_in "From", :with => "1112224444"
    fill_in "Body", :with => ""
    click_on "Send Text"
    expect(page).to have_content "errors"
  end

  it 'shows an error when form is not filled in' do
    visit messages_path
    click_on "Send new text"
    fill_in "To", :with => ""
    fill_in "From", :with => ""
    fill_in "Body", :with => ""
    click_on "Send Text"
    expect(page).to have_content "errors"
  end

end
