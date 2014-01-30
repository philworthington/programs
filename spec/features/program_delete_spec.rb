require 'spec_helper'

feature "Delete programs" do
  before :each do
    @program = create(:program)
  end
  scenario 'program is deleted when destroy is selected' do
    visit root_path
    click_on "Destroy"

    expect(page).not_to have_text("This is a title")
  end
end
