require 'rails_helper'

feature 'Sign In', :devise do
    let(:user) {build(:user)}
    scenario 'user can not sign in if not registered' do
        signin(user.email, user.password)
        expect(page).to have_content 'Invalid Email or password.'
    end
end