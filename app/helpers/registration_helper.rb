module RegistrationHelper
    module SignUpHelpers
        def signup(name,email,password)
            visit new_user_registration_path
            fill_in 'Name', with: name
            fill_in 'Email', with: email
            fill_in 'Password', with: password
            click_on 'Sign up'
        end
    end
end