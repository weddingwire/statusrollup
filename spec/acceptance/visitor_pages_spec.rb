require 'spec_helper'

feature "Splash page" do
  scenario "Explains the site to a visitor" do
    visit '/'
    page.should have_content('Commit Status')
    page.should have_content('GitHub')
  end
end

feature "privacy policy page" do
  scenario 'Explains privacy policy to a visitor' do
    visit '/'
    click_link 'Privacy Policy'
    page.should have_content('you must read through the entire Privacy Policy below')
  end
end

feature "terms page" do
  scenario 'Explains terms to a visitor' do
    visit '/'
    click_link 'Terms of Service'
    page.should have_content('sets forth the conditions and terms under which users may access')
  end
end
