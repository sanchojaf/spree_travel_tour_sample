Spree::Product.all.each do |p|
  p.location= Spree::Location.create!(:latitude => rand(-90.000000000...90.000000000), :longitude => rand(-180.000000000...180.000000000))
  p.save
end
