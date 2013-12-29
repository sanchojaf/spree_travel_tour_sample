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
    :taxonomy => destinations
  },
  {
    :name => "Mexico",
    :taxonomy => destinations,
    :parent => "Destinations"
  },
  {
    :name => "Cancun",
    :taxonomy => destinations,
    :parent => "Mexico",
    :products => [
      products[:ror_tote],
      products[:ror_bag],
    ]
  },
  {
    :name => "Costa Rica",
    :taxonomy => destinations,
    :parent => "Destinations"
  },

  {
    :name => "San Jose",
    :taxonomy => destinations,
    :parent => "Costa Rica",
    :products => [
      products[:ror_mug],
      products[:ror_stein]
    ]
  },

]

taxons_2 = [
  {
    :name => "Unied Stated",
    :taxonomy => destinations,
    :parent => "Destinations"
  },
  {
    :name => "New York",
    :taxonomy => destinations,
    :parent => "Unied Stated",
    :products => [
      products[:ror_baseball_jersey],
      products[:ror_jr_spaghetti]
    ]
  },
  {
    :name => "Venezuela",
    :taxonomy => destinations,
    :parent => "Destinations"
  },
  {
    :name => "Caracas",
    :taxonomy => destinations,
    :parent => "Venezuela",
    :products => [
      products[:ror_ringer],
      products[:spree_baseball_jersey]
    ]
  },
  {
    :name => "Nicaragua",
    :taxonomy => destinations,
    :parent => "Destinations"
  },

  {
    :name => "Managua",
    :taxonomy => destinations,
    :parent => "Nicaragua",
    :products => [
      products[:spree_tote],
      products[:spree_bag]
    ]
  },
  {
    :name => "New Zealand",
    :taxonomy => destinations,
    :parent => "Destinations"
  },
  {
    :name => "Wellintong",
    :taxonomy => destinations,
    :parent => "New Zealand",
    :products => [
      products[:spree_jr_spaghetti],
      products[:apache_baseball_jersey],
      products[:ruby_baseball_jersey]
    ]
  },
]  

taxons.each do |taxon_attrs|
  if taxon_attrs[:parent]
    taxon_attrs[:parent] = Spree::Taxon.find_by_name!(taxon_attrs[:parent])
    Spree::Taxon.create!(taxon_attrs)
  end
end
     
