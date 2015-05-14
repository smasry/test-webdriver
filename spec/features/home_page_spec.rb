require 'spec_helper'


feature "Visit home page" do
  scenario "submit contact information" do
    visit '/'
    click_link 'CONTACT'
    fill_in :name_field, with: Forgery::Name.full_name
    fill_in :email_field, with: Forgery::Internet.email_address
    fill_in :address_field, with: Forgery::Address.street_address
    fill_in :postcode_field, with: Forgery::Address.zip
    click_button "Send"
    expect(page).to have_text "We have your message"
  end
end
