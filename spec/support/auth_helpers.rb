require 'rails_helper'

def create_auth_header_from_scratch(user = nil)
  (user || FactoryBot.create(:user)).create_new_auth_token
end
