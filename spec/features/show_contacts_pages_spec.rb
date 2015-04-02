require 'rails_helper'

describe 'the show list of contacts process' do

  it 'shows a list of contacts' do
    contact = FactoryGirl.create(:contact)
    visit contacts_path
    expect(page).to have_content "Charlie Brown"
  end
  
end
