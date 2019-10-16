require 'rails_helper'

feature 'Sign up', :devise do
    let(:user) {build(:user)}
    scenario 'user can not sign up with no name' do
      signup('',user.email,user.password)
      expect(page).to have_content 'can\'t be blank'
    end

    scenario 'user can not sign up with no email' do
      signup(user.name,'',user.password)
      expect(page).to have_content 'can\'t be blank'
    end

    scenario 'user can not sign up with no password' do
      signup(user.name,user.email,'')
      expect(page).to have_content 'can\'t be blank'
    end

  end