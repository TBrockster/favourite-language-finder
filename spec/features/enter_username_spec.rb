# frozen_string_literal: true

feature 'Entering User:' do
  scenario "Entering 'TBrockster'" do
    enter_name
    expect(page).to have_content('Repository Name')
  end
end
