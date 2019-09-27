# frozen_string_literal: true

feature 'Entering User:' do
  scenario "Entering 'TBrockster'" do
    enter_name
    expect(page).to have_content('result')
  end
  scenario 'User name is passed to result page' do
    enter_name
    expect(page).to have_content('TBrockster')
  end
end
