Given("I visit the site") do
    visit root_path
  end

  Given("I click {string} button") do |button|
    click_link_or_button button
  end
  
  Given("I fill in {string} with {string}") do |field, text|
    fill_in field, with: text
  end
  
  