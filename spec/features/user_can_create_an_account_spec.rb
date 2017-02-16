require 'rails_helper'

  feature "User create a new user" do
   describe "when a user visits the new user path" do
     it "they can fill in the form and create a new user" do
       username = "cmac"
       password = "monkey"

       visit new_user_path

       fill_in "user_username", with: username
       fill_in "user_password", with: password
       fill_in "user_password_confirmation", with: password
       click_on "Create Brewer Account"

       expect(page).to have_content("cmac")
     end
    end
   end
