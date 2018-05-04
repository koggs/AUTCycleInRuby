Given("I visit the site") do
    visit root_path
  end
  
  When("I am on the landing page") do
    visit root_path
  end
  
  Given("the following articles exist") do |table|
    table.hashes.each do |article|
      # binding.pry
      #I can check what article is
      # {"title"=>"A breaking news item", "content"=>"Some really breaking action", "author"=>"Thomas"}
      FactoryBot.create(:article, article)
  end
end
