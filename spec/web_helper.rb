# frozen_string_literal: true

def enter_name
  visit '/'
  fill_in 'username', with: 'TBrockster'
  click_button 'Find Favourite Language!'
end