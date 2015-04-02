require 'rails_helper'

describe 'the show list of contacts process' do

  it 'shows a list of contacts' do
    contact = FactoryGirl.create(:contact)
    visit contacts_path
    expect(page).to have_content "Charlie Brown"
  end

  it 'edits a contact' do
    contact = FactoryGirl.create(:contact)
    visit contacts_path
    click_on "Edit"
    fill_in "Name", :with => "Snoopy"
    click_on "Update"
    expect(page).to have_content "Snoopy"
  end

  it 'deletes a contact' do
    contact = FactoryGirl.create(:contact)
    visit contacts_path
    click_on 'Delete'
    expect(page).to have_no_content contact
  end

end
