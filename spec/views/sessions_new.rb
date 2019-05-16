require 'rails_helper'

RSpec.describe "sessions_new" :type => :view do 
    it "returns to login page if no name is entered" do 
        visit '/login'
        fill_in 'name', with: ""
        click_button 'login'
        expect(page.body).to redirect_to login_path
    end
    it "if a name is entered" do 
        visit '/login'
        fill_in 'name, with 'Suzan'
        click_button 'login'
        expect(page.body).to redirect_to root_path
        # expect session[:name] = params[:name]
    end
end
    