require 'spec_helper'

feature "Create programs" do
  scenario 'submitting form data to create new program' do
    visit root_path
    click_on "New Program"

    fill_in "Title", :with => "This is a title"
    fill_in "Subtitle", :with => "This is a subtitle"
    fill_in "Code", :with => "123456"
    click_on "Create Program"

    expect(page).to have_text("This is a title")
  end
end
