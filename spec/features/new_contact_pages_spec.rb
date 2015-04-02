require 'rails_helper'

describe 'the add a new contact process' do

  it "adds a new contact" do
    visit contacts_path
    click_on "New Contact"
    fill_in "Name", :with => 'Snoopy'
    fill_in "Cell", :with => '9716789823'
    click_on "Create Contact"
    expect(page).to have_content "Snoopy"
  end
end
