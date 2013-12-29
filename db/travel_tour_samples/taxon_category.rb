#encoding: utf-8
categories = Spree::Taxonomy.find_by_name!("Categories")
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


products.each do |key, name|
  products[key] = Spree::Product.find_by_name!(name)
end

taxons = [
  {
    :name => "Categories",
    :taxonomy => categories,
    :position => 0
  },
  {
    :name => "Adventure",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 1,
    :products => [
      products[:ror_tote],
      products[:ror_bag],
      products[:apache_baseball_jersey],
      products[:spree_bag]
    ]
  },
  {
    :name => "Sport",
    :taxonomy => categories,
    :parent => "Adventure",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:ror_stein],
      products[:ror_baseball_jersey],
      products[:spree_bag]
    ]
  },
 
  {
    :name => "Backcountry Skiing",
    :taxonomy => categories,
    :parent => "Sport",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:ror_stein],
      products[:spree_stein],
      products[:spree_mug]
    ]
  },
  {
    :name => "Surfing",
    :taxonomy => categories,
    :parent => "Sport",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:apache_baseball_jersey],
      products[:spree_bag],
      products[:spree_mug]
    ]
  },
  {
    :name => "Swimming",
    :taxonomy => categories,
    :parent => "Sport",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:spree_jr_spaghetti],
      products[:spree_stein],
      products[:spree_mug]
    ]
  },
  {
    :name => "Waterskiing",
    :taxonomy => categories,
    :parent => "Sport",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:ror_stein],
      products[:spree_stein],
      products[:apache_baseball_jersey]
    ]
  },
  {
    :name => "Sailing",
    :taxonomy => categories,
    :parent => "Sport",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:ror_stein],
      products[:spree_bag],
      products[:spree_mug]
    ]
  },
  {
    :name => "Wakeboarding",
    :taxonomy => categories,
    :parent => "Sport",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:apache_baseball_jersey],
      products[:spree_stein],
      products[:spree_mug]
    ]
  },
  {
    :name => "Mountain Biking",
    :taxonomy => categories,
    :parent => "Sport",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:ror_stein],
      products[:spree_stein],
      products[:spree_mug]
    ]
  },
  {
    :name => "Boat Excursion",
    :taxonomy => categories,
    :parent => "Adventure",
    :position => 2,
    :products => [
      products[:spree_jr_spaghetti],
      products[:ror_stein],
      products[:spree_stein],
      products[:spree_mug]
    ]
  },
  {
    :name => "Desert Excursion",
    :taxonomy => categories,
    :parent => "Adventure",
    :position => 2,
    :products => [
      products[:spree_bag],
      products[:ror_stein],
      products[:spree_stein],
      products[:spree_mug]
    ]
  },
  {
    :name => "Fishing",
    :taxonomy => categories,
    :parent => "Adventure",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:ror_baseball_jersey],
      products[:spree_stein],
      products[:spree_mug]
    ]
  },
  {
    :name => "Hiking",
    :taxonomy => categories,
    :parent => "Adventure",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:ror_baseball_jersey],
      products[:spree_stein],
      products[:spree_mug]
    ]
  },
  {
    :name => "Hunting",
    :taxonomy => categories,
    :parent => "Adventure",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:ror_stein],
      products[:spree_stein],
      products[:spree_mug]
    ]
  },
  {
    :name => "Safari",
    :taxonomy => categories,
    :parent => "Adventure",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:spree_jr_spaghetti],
      products[:spree_stein],
      products[:spree_mug]
    ]
  },
  {
    :name => "Scuba Diving",
    :taxonomy => categories,
    :parent => "Adventure",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:spree_bag],
      products[:ror_baseball_jersey],
      products[:spree_mug]
    ]
  },
  {
    :name => "Recreation",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 1,
    :products => [
      products[:ror_tote],
      products[:ror_bag],
      products[:spree_tote],
      products[:spree_bag]
    ]
  },
  {
    :name => "Dancing",
    :taxonomy => categories,
    :parent => "Recreation",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:spree_jr_spaghetti],
      products[:spree_stein],
      products[:spree_mug]
    ]
  },
  {
    :name => "Sightseeing",
    :taxonomy => categories,
    :parent => "Recreation",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:ror_stein],
      products[:spree_stein],
      products[:spree_mug]
    ]
  },
  {
    :name => "Relaxation",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 1,
    :products => [
      products[:ror_tote],
      products[:ror_bag],
      products[:spree_tote],
      products[:spree_bag]
    ]
  },
  {
    :name => "Tai Chi",
    :taxonomy => categories,
    :parent => "Relaxation",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:ror_stein],
      products[:spree_stein],
      products[:spree_jr_spaghetti]
    ]
  },
  {
    :name => "Yoga",
    :taxonomy => categories,
    :parent => "Relaxation",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:ror_stein],
      products[:spree_stein],
      products[:spree_mug]
    ]
  },
  {
    :name => "Reiki",
    :taxonomy => categories,
    :parent => "Relaxation",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:ror_stein],
      products[:spree_stein],
      products[:spree_mug]
    ]
  },
 {
    :name => "Pilates",
    :taxonomy => categories,
    :parent => "Relaxation",
    :position => 2,
    :products => [
      products[:ror_mug],
      products[:ror_stein],
      products[:spree_stein],
      products[:spree_mug]
    ]
  },
  {
    :name => "Destinations",
    :taxonomy => destinations
  },
  {
    :name => "Costa Rica",
    :taxonomy => destinations,
    :parent => "Destinations",
  },
  {
    :name => "San Juan",
    :taxonomy => destinations,
    :parent => "Costa Rica",
    :products => [
      products[:apache_baseball_jersey]
    ]
  },
  {
    :name => "Nicaragua",
    :taxonomy => destinations,
    :parent => "Destinations",
  },

  {
    :name => "Managua",
    :taxonomy => destinations,
    :parent => "Nicaragua",
    :products => [
      products[:spree_stein],
      products[:spree_mug],
      products[:spree_ringer],
      products[:spree_baseball_jersey],
      products[:spree_tote],
      products[:spree_bag],
      products[:spree_jr_spaghetti],
    ]
  },
  {
    :name => "Unied Stated",
    :taxonomy => destinations,
    :parent => "Destinations",
  },
  {
    :name => "New York",
    :taxonomy => destinations,
    :parent => "Unied Stated",
    :products => [
      products[:ror_tote],
      products[:ror_bag],
      products[:ror_mug],
      products[:ror_stein],
      products[:ror_baseball_jersey],
      products[:ror_jr_spaghetti],
      products[:ror_ringer],
    ]
  },
]


taxons.each do |taxon_attrs|
  if taxon_attrs[:parent]
    taxon_attrs[:parent] = Spree::Taxon.find_by_name!(taxon_attrs[:parent])
    Spree::Taxon.create!(taxon_attrs)
  end
end
     
