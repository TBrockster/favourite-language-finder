# frozen_string_literal: true

feature 'Viewing result' do
  scenario 'Can see repo names' do
    enter_name('TBrockster')
    expect(page.status_code).to eq(200)
    expect(page).to have_content('hello-world')
    expect(page).to have_content('JavaScript')
    expect(page).to have_content('Your favourite language by repo count is: Ruby')
    expect(page).to have_content('Your favourite language by total bytes is: JavaScript')
  end
end
