#encoding: utf-8
categories = Spree::Taxonomy.find_by_name!("Categories")
taxons = [
 {
  name: 'categories',
  taxonomy: categories,
  permalink: 'categories',
  position: 0 
 },
 {
  name: 'Eat out',
  taxonomy: categories,
  permalink: 'categories/eat-out',
  position: 1
 },
 {
  name: 'Drinks',
  taxonomy: categories,
  permalink: 'categories/drinks',
  position: 1
 },
 {
  name: 'Nightlife',
  taxonomy: categories,
  permalink: 'categories/nightlife',
  position: 1
 },
 {
  name: 'Shopping',
  taxonomy: categories,
  permalink: 'categories/shopping',
  position: 1
 },
 {
  name: 'Beaches',
  taxonomy: categories,
  permalink: 'categories/beaches',
  position: 1
 },
 {
  name: 'Interesting places',
  taxonomy: categories,
  permalink: 'categories/interesting-places',
  position: 1
 },
]    


taxons.each do |taxon_attrs|
  taxon = Spree::Taxon.find_or_create_by_permalink(taxon_attrs[:permalink])
  taxon.taxonomy = taxon_attrs[:taxonomy]
  taxon.name = taxon_attrs[:name]
  puts taxon.inspect
end
