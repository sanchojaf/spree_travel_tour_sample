users = Spree::User.all 
products = Spree::Product.all 

products.each do |product|
  1.upto(rand 10 ) do  
    rating = 1 + rand(4)
    review = Spree::Review.create!(  :name => Faker::Name.name, 
                                     :rating => rating, 
                                     :review => Faker::Lorem.paragraph, 
                                     :user_id =>  users[rand(users.length)].id,
                                     :product_id => product.id,         
                                                                          
                                    )
   review.approved = true
   review.save
  end

end
