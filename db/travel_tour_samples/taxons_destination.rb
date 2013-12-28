#encoding: utf-8
destinations = Spree::Taxonomy.find_by_name!("Destinations")

products = { 
  :ror_tote => "Ruby on Rails Tote",
  :ror_bag => "Ruby on Rails Bag",
  :ror_mug => "Ruby on Rails Mug",
  :ror_stein => "Ruby on Rails Stein",
  :ror_baseball_jersey => "Ruby on Rails Baseball Jersey",
  :ror_jr_spaghetti => "Ruby on Rails Jr. Spaghetti",
  :ror_ringer => "Ruby on Rails Ringer T-Shirt",
  :spree_stein => "Spree Stein",
  :spree_mug => "Spree Mug",
  :spree_ringer => "Spree Ringer T-Shirt",
  :spree_baseball_jersey =>  "Spree Baseball Jersey",
  :spree_tote => "Spree Tote",
  :spree_bag => "Spree Bag",
  :spree_jr_spaghetti => "Spree Jr. Spaghetti",
  :apache_baseball_jersey => "Apache Baseball Jersey",
  :ruby_baseball_jersey => "Ruby Baseball Jersey",
}
 
taxons = [
  {
    :name => "Destinations",
    :taxonomy => destinations,
    :position => 0
  },
  {
    :name => "Mexico",
    :taxonomy => destinations,
    :parent => "Destinations",
    :position => 1,
    :products => [
      products[:spree_ringer],
      products[:ror_bag],
      products[:apache_baseball_jersey],
      products[:spree_bag]
    ]
  },
  {
    :name => "Cancun",
    :taxonomy => destinations,
    :parent => "Mexico",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:ror_stein],
      products[:ror_baseball_jersey],
      products[:spree_bag]
    ]
  },
  {
    :name => "Costa Rica",
    :taxonomy => destinations,
    :parent => "Destinations",
    :position => 1,
    :products => [
      products[:ror_tote],
      products[:spree_ringer],
      products[:apache_baseball_jersey],
      products[:ror_jr_spaghetti]
    ]
  },

  {
    :name => "San Jose",
    :taxonomy => destinations,
    :parent => "Costa Rica",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:ror_stein],
      products[:ror_baseball_jersey],
      products[:spree_bag]
    ]
  },
  {
    :name => "Unied Stated",
    :taxonomy => destinations,
    :parent => "Destinations",
    :position => 1,
    :products => [
      products[:ror_tote],
      products[:ror_bag],
      products[:apache_baseball_jersey],
      products[:spree_bag]
    ]
  },

  {
    :name => "New York",
    :taxonomy => destinations,
    :parent => "Unied Stated",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:apache_baseball_jersey],
      products[:ror_jr_spaghetti],
      products[:spree_mug]
    ]
  },

]  
  

taxons.each do |taxon_attrs|
  if taxon_attrs[:parent]
    taxon_attrs[:parent] = Spree::Taxon.find_by_name!(taxon_attrs[:parent])
    Spree::Taxon.create!(taxon_attrs)
  end
end
     
