feature 'Viewing result' do
  scenario 'Can see repo names' do
    enter_name
    expect(page).to have_content('hello-world')
  end
end
