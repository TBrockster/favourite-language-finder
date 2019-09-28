# frozen_string_literal: true

feature 'Viewing result' do
  scenario 'Can see repo names' do
    enter_name
    expect(page).to have_content('hello-world')
    expect(page).to have_content('JavaScript')
    expect(page).not_to have_content("You're seeing this error because you have enabled the show_exceptions setting.")
    expect(page).to have_content('Your favourite language by repo count is: Ruby')
    expect(page).to have_content('Your favourite language by total bytes is: JavaScript')
  end
end
