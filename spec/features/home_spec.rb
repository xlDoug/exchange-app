require 'rails_helper'

RSpec.describe "Exchange Currency Proccess", :type => :feature do

  it "exchange value" do
    visit '/'
    within("#exchange_form") do
      select('EUR', from: 'currency')
      select('USD', from: 'currency_destination')
      fill_in 'quantity', with: '10'
    end
    click_button 'CONVERT'
    expect(page).to have_content("value")
  end

end
