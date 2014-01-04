
user_admin = Spree::User.where(:email => "spree@example.com")
user_jack = Spree::User.where(:email => "jack@g.com")
user_sa = Spree::User.where(:email => "sa@g.com")


default_attrs = {   
  :available_on => Time.zone.now
}

products = [
  {
    :name => "Ruby on Rails Tote",
    :price => 15.99,
    :description => Faker::Lorem.paragraph,
    :user_id => user_sa.first.id
  },
  {
    :name => "Ruby on Rails Bag",
    :price => 22.99,
    :description => Faker::Lorem.paragraph,
    :user_id => user_jack.first.id
  },
  {
    :name => "Ruby on Rails Baseball Jersey",
    :price => 17.99,
    :description => Faker::Lorem.paragraph,
    :user_id => user_sa.first.id
  },
  {
    :name => "Ruby on Rails Jr. Spaghetti",
    :price => 23.99,
    :description => Faker::Lorem.paragraph,
    :user_id => user_jack.first.id
  },
  {
    :name => "Ruby on Rails Ringer T-Shirt",
    :price => 25.60,
    :description => Faker::Lorem.paragraph,
    :user_id => user_sa.first.id
  },
  {
    :name => "Ruby Baseball Jersey",
    :price => 29.99,
    :description => Faker::Lorem.paragraph,
    :user_id => user_jack.first.id
  },
  {
    :name => "Apache Baseball Jersey",
    :price => 9.99,
    :description => Faker::Lorem.paragraph,
    :user_id => user_sa.first.id
  },
  {
    :name => "Spree Baseball Jersey",
    :price => 15.75,
    :description => Faker::Lorem.paragraph,
    :user_id => user_jack.first.id
  },
  {
    :name => "Spree Jr. Spaghetti",
    :price => 18.90,
    :description => Faker::Lorem.paragraph,
    :user_id => user_jack.first.id
  },
  {
    :name => "Spree Ringer T-Shirt",
    :price => 21.99,
    :description => Faker::Lorem.paragraph,
    :user_id => user_sa.first.id
  },
  {
    :name => "Spree Tote",
    :price => 15.99,
    :description => Faker::Lorem.paragraph,
    :user_id => user_sa.first.id
  },
  {
    :name => "Spree Bag",
    :price => 12.99,
    :description => Faker::Lorem.paragraph,
    :user_id => user_sa.first.id
  },
  {
    :name => "Ruby on Rails Mug",
    :price => 13.99,
    :description => Faker::Lorem.paragraph,
    :user_id => user_sa.first.id
  },
  {
    :name => "Ruby on Rails Stein",
    :price => 16.99,
    :description => Faker::Lorem.paragraph,
    :user_id => user_sa.first.id
  },
  {
    :name => "Spree Stein",
    :price => 16.99,
    :description => Faker::Lorem.paragraph,
    :user_id => user_admin.first.id
  },
  {
    :name => "Spree Mug",
    :price => 13.99,
    :description => Faker::Lorem.paragraph,
    :user_id => user_sa.first.id
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
                   
  activity_detail = Spree::ActivityDetail.new
  activity_detail.duration = "#{3 + rand(5)} hours"
  activity_detail.itinerary = Faker::Lorem.paragraph
  activity_detail.cancellation = Faker::Lorem.paragraph    
  activity_detail.things_to_bring = Faker::Lorem.paragraph   
  activity_detail.pick_up = Faker::Lorem.paragraph   

  product.activity_detail = activity_detail

  product.save!
end

