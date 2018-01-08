require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  # validations
  it { should validate_presence_of(:email) }

  it { should validate_presence_of(:password_digest) }

  it { should validate_length_of(:password).is_at_least(6) }

  it "should allow password value 'nil'" do
    user = User.new
    user.password = ""
    expect(user).to allow_value(nil).for(:password)
  end
end


RSpec.describe UsersController, :type => :controller do

  describe "GET #new" do
    it "renders the new template" do
      get :new, {}
      expect(response).to render_template("new")
    end
  end

  describe "POST #create" do
    context "with invalid params" do
      it "validates the presence of the user's email and password"

      it "validates that the password is at least 6 characters long"
    end

    context "with valid params" do
      it "redirects user to bands index on success"
    end
  end
end

feature "the signup process" do

  scenario "has a new user page" do
    visit new_user_url
    expect(page).to have_content "New user"
  end

  feature "signing up a user" do
    before(:each) do
      visit new_user_url
      fill_in 'Email', :with => "testing@email.com"
      fill_in 'password', :with => "biscuits"
      click_on "Create User"
    end

    scenario "redirects to bands index page after signup"
  end

  feature "with an invalid user" do
    before(:each) do
      visit new_user_url
      fill_in 'Email', :with => "testing@email.com"
      click_on "create user"
    end

    scenario "re-renders the signup page after failed signup"
  end

end
