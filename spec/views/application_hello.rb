require 'rails_helper'

RSpec.describe "hello" :type => :view do
    # before set session[:name] = "George"
    it "displays message and logout link if the user is logged in" do 
        visit '/'
        expect(page.body).to include "Hi George"
        expect(page.body).to include link_to logout_path
    end
    #before session.delete :name 
    it "displays a login link" do 
        visit '/'
        expect(page.body).to include link_to login_path 
    end
end