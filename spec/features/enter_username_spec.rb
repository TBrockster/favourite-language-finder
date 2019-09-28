# frozen_string_literal: true

feature 'Entering User:' do
  scenario "Entering 'TBrockster'" do
    enter_name('TBrockster')
    expect(page).to have_content('Repository Name')
    expect(page).to have_link('hello-world', href: 'https://github.com/TBrockster/hello-world')
  end

  scenario "Entering ' '" do
    enter_name(' ')
    expect(page.status_code).to eq(200)
    expect(page).to have_content("I'm sorry, we couldn't find that user.")
    click_button 'Back'
    expect(current_path).to eq '/'
  end
end
