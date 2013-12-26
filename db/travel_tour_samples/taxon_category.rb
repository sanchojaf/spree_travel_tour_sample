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
  name: 'Adventure',
  taxonomy: categories,
  permalink: 'categories/adventure',
  position: 1
 },
 {
  name: 'Sport',
  taxonomy: categories,
  permalink: 'categories/adventure/sport',
  position: 2
 },
 {
  name: 'Backcountry Skiing',
  taxonomy: categories,
  permalink: 'categories/adventure/sport/backcountry_skiing',
  position: 3
 },
 {
  name: 'Surfing',
  taxonomy: categories,
  permalink: 'categories/adventure/sport/surfing',
  position: 3
 },
 {
  name: 'Swimming',
  taxonomy: categories,
  permalink: 'categories/adventure/sport/swimming',
  position: 3
 },
 {
  name: 'Waterskiing',
  taxonomy: categories,
  permalink: 'categories/adventure/sport/waterskiing',
  position: 3
 },
 {
  name: 'Sailing',
  taxonomy: categories,
  permalink: 'categories/adventure/sport/sailing',
  position: 3
 },
 {
  name: 'Wakeboarding',
  taxonomy: categories,
  permalink: 'categories/adventure/sport/wakeboarding',
  position: 3
 },
 {
  name: 'Mountain Biking',
  taxonomy: categories,
  permalink: 'categories/adventure/sport/mountain_biking',
  position: 3
 },
 {
  name: 'Boat Excursion',
  taxonomy: categories,
  permalink: 'categories/adventure/boat_excursion',
  position: 2
 },
 {
  name: 'Desert Excursion',
  taxonomy: categories,
  permalink: 'categories/adventure/desert_excursion',
  position: 2
 },
 {
  name: 'Fishing',
  taxonomy: categories,
  permalink: 'categories/adventure/fishing',
  position: 2
 },
 {
  name: 'Hiking',
  taxonomy: categories,
  permalink: 'categories/adventure/hiking',
  position: 2
 },
 {
  name: 'Hunting',
  taxonomy: categories,
  permalink: 'categories/adventure/hunting',
  position: 2
 },
 {
  name: 'Safari',
  taxonomy: categories,
  permalink: 'categories/adventure/safari',
  position: 2
 },
 {
  name: 'Scuba Diving',
  taxonomy: categories,
  permalink: 'categories/adventure/scuba_diving',
  position: 2
 },
 {
  name: 'Recreation',
  taxonomy: categories,
  permalink: 'categories/recreation',
  position: 1
 },
 {
  name: 'Dancing',
  taxonomy: categories,
  permalink: 'categories/recreation/dancing',
  position: 2
 },
{
  name: 'Sightseeing',
  taxonomy: categories,
  permalink: 'categories/recreation/sightseeing',
  position: 2
 },
 {
  name: 'Relaxation',
  taxonomy: categories,
  permalink: 'categories/relaxation',
  position: 1
 },
 {
  name: 'Tai Chi',
  taxonomy: categories,
  permalink: 'categories/relaxation/tai_chi',
  position: 2
 },
{
  name: 'Yoga',
  taxonomy: categories,
  permalink: 'categories/relaxation/yoga',
  position: 2
 },
 {
  name: 'Reiki',
  taxonomy: categories,
  permalink: 'categories/relaxation/reiki',
  position: 2
 },
 {
  name: 'Pilates',
  taxonomy: categories,
  permalink: 'categories/relaxation/pilates',
  position: 2
 }
]    

     
taxons.each do |taxon_attrs|
  taxon = Spree::Taxon.find_or_create_by_permalink(taxon_attrs[:permalink])
  taxon.taxonomy = taxon_attrs[:taxonomy]
  taxon.name = taxon_attrs[:name]
  puts taxon.inspect
end
