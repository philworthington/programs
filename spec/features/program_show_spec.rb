require 'spec_helper'

feature "Show a program" do
  before :each do
    @program = create(:program)
  end
  scenario 'view show page of program' do
    visit root_path
    click_on "Show"

    expect(page).to have_text("This is a title")
  end
end
