# frozen_string_literal: true

def enter_name(name)
  visit '/'
  fill_in 'username', with: name
  click_button 'Find Favourite Language!'
end
