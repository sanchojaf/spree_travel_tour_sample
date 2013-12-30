shipping_category = Spree::ShippingCategory.find_by_name!("Default")

activity_detail = Spree::ActivityDetail.new
activity_detail."#{3 + rand(5)} hours"
activity_detail.save

puts "/////////////////////////////// activity_detail = #{activity_detail.inspect} //////////////"

default_attrs = { 
  :activity_detail => activity_detail,
  :available_on => Time.zone.now
}

products = [
  {
    :name => "Ruby on Rails Tote",
    :shipping_category => shipping_category,
    :price => 15.99,
    :description => Faker::Lorem.paragraph,
  },
  {
    :name => "Ruby on Rails Bag",
    :shipping_category => shipping_category,
    :price => 22.99,
    :description => Faker::Lorem.paragraph,
  },
  {
    :name => "Ruby on Rails Baseball Jersey",
    :shipping_category => shipping_category,
    :price => 17.99,
    :description => Faker::Lorem.paragraph,
  },
  {
    :name => "Ruby on Rails Jr. Spaghetti",
    :shipping_category => shipping_category,
    :price => 23.99,
    :description => Faker::Lorem.paragraph,
  },
  {
    :name => "Ruby on Rails Ringer T-Shirt",
    :shipping_category => shipping_category,
    :price => 25.60,
    :description => Faker::Lorem.paragraph,
  },
  {
    :name => "Ruby Baseball Jersey",
    :shipping_category => shipping_category,
    :price => 29.99,
    :description => Faker::Lorem.paragraph,
  },
  {
    :name => "Apache Baseball Jersey",
    :shipping_category => shipping_category,
    :price => 9.99,
    :description => Faker::Lorem.paragraph,
  },
  {
    :name => "Spree Baseball Jersey",
    :shipping_category => shipping_category,
    :price => 15.75,
    :description => Faker::Lorem.paragraph,
  },
  {
    :name => "Spree Jr. Spaghetti",
    :shipping_category => shipping_category,
    :price => 18.90,
    :description => Faker::Lorem.paragraph,
  },
  {
    :name => "Spree Ringer T-Shirt",
    :shipping_category => shipping_category,
    :price => 21.99,
    :description => Faker::Lorem.paragraph,
  },
  {
    :name => "Spree Tote",
    :shipping_category => shipping_category,
    :price => 15.99,
    :description => Faker::Lorem.paragraph,
  },
  {
    :name => "Spree Bag",
    :shipping_category => shipping_category,
    :price => 12.99,
    :description => Faker::Lorem.paragraph,
  },
  {
    :name => "Ruby on Rails Mug",
    :shipping_category => shipping_category,
    :price => 13.99,
    :description => Faker::Lorem.paragraph,
  },
  {
    :name => "Ruby on Rails Stein",
    :shipping_category => shipping_category,
    :price => 16.99,
    :description => Faker::Lorem.paragraph,
  },
  {
    :name => "Spree Stein",
    :shipping_category => shipping_category,
    :price => 16.99,
    :description => Faker::Lorem.paragraph,
  },
  {
    :name => "Spree Mug",
    :shipping_category => shipping_category,
    :price => 13.99,
    :description => Faker::Lorem.paragraph,
  }
]

products.each do |product_attrs|
#  eur_price = product_attrs.delete(:eur_price)
  Spree::Config[:currency] = "USD"

  default_shipping_category = Spree::ShippingCategory.find_by_name!("Default")
  product = Spree::Product.create!(default_attrs.merge(product_attrs))
#  Spree::Config[:currency] = "EUR"
#  product.reload
#  product.price = eur_price
  product.shipping_category = default_shipping_category
  product.save!
end

