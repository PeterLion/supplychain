require 'rails_helper'

feature 'Sign up', :devise do
    let(:user) {build(:user)}
    scenario 'user can not sign in if not registered' do
      expect(user.valid?).to eq(false)
    end
end