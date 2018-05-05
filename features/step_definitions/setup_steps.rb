Given("the followin articles exist in the database") do |table|
  table.hashes.each do |article|
    create(:article, article)
  end
end