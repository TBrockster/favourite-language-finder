# frozen_string_literal: true

feature 'Entering User:' do
  scenario "Entering 'TBrockster'" do
    visit '/'
    fill_in 'username', with: 'TBrockster'
    click_button 'Find Favourite Language!'
    expect(page).to have_content('result')
  end
  scenario 'User name is passed to result page' do
    visit '/'
    fill_in 'username', with: 'TBrockster'
    click_button 'Find Favourite Language!'
    expect(page).to have_content('TBrockster')
  end
end
