require 'spec_helper'

feature "Editing programs" do
  before :each do
    @program = create(:program)
  end
  scenario 'program is edited with new content' do
    visit root_path
    click_on "Edit"

    fill_in "Title", :with => "New title"
    click_on "Update Program"

    expect(page).to have_text("New title")
  end
end
