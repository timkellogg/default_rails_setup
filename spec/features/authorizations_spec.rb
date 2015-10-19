require 'rails_helper'

describe "authorizations" do

  context "when not signed in and visiting a protected page" do
    let(:user) { FactoryGirl.create(:user) }

    it "redirects the user to sign_in" do
      visit edit_user_path(user)
      expect(page).to have_content "log in"
    end
  end

  context "when signed in as a non-admin" do
    let(:user) { FactoryGirl.create(:user) }

    before do
      visit login_path
      fill_in "Email",    with: user.email
      fill_in "Password", with: user.password
      click_button "Sign in"
    end

    # can't complete task that admin can do


  end

  context "when signed in as an admin" do

    # can complete any task 
  end

end
