Given("I visit the site") do
    visit root_path
  end
  
  When("I am on the landing page") do
    visit root_path
  end
  
  Given("the following articles exist") do |table|
    table.hashes.each do |article|
    FactoryBot.create(:article, article)
  end
end