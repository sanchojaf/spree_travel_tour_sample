require 'spree_core'
#require 'spree_travel_core'
#require 'spree/travel_tour_sample'

module SpreeTravelTourSample
  class Engine < Rails::Engine
    engine_name 'spree_travel_tour_sample'

    # Needs to be here so we can access it inside the tests
    def self.load_travel_tour_samples
        
      Spree::TravelTourSample.load_travel_tour_sample("payment_methods")
      Spree::TravelTourSample.load_travel_tour_sample("shipping_categories")
      Spree::TravelTourSample.load_travel_tour_sample("shipping_methods")
      Spree::TravelTourSample.load_travel_tour_sample("tax_categories")
      Spree::TravelTourSample.load_travel_tour_sample("tax_rates")

#      Spree::TravelTourSample.load_travel_tour_sample("property_types") 
      Spree::TravelTourSample.load_travel_tour_sample("properties_tour")

      Spree::TravelTourSample.load_travel_tour_sample("products")

      Spree::TravelTourSample.load_travel_tour_sample("taxonomy_categories") 
      Spree::TravelTourSample.load_travel_tour_sample("taxon_category")

      Spree::TravelTourSample.load_travel_tour_sample("option_types")
      Spree::TravelTourSample.load_travel_tour_sample("option_values")

      Spree::TravelTourSample.load_travel_tour_sample("product_option_types")
      Spree::TravelTourSample.load_travel_tour_sample("product_properties")


      Spree::TravelTourSample.load_travel_tour_sample("variants")
      Spree::TravelTourSample.load_travel_tour_sample("stock")
      Spree::TravelTourSample.load_travel_tour_sample("assets")

      Spree::TravelTourSample.load_travel_tour_sample("addresses")
      Spree::TravelTourSample.load_travel_tour_sample("orders")
      Spree::TravelTourSample.load_travel_tour_sample("adjustments")
      Spree::TravelTourSample.load_travel_tour_sample("payments")
    

#      Spree::TravelTourSample.load_travel_tour_sample("option_types")
#      Spree::TravelTourSample.load_travel_tour_sample("option_values")
#      Spree::TravelTourSample.load_travel_tour_sample("property_types")      
#      Spree::TravelTourSample.load_travel_tour_sample("properties_flight")
#      Spree::TravelTourSample.load_travel_tour_sample("properties_hotel")
#      Spree::TravelTourSample.load_travel_tour_sample("properties_program")
#      Spree::TravelTourSample.load_travel_tour_sample("properties_rent_a_car")
#      Spree::TravelTourSample.load_travel_tour_sample("properties_tour")
#      Spree::TravelTourSample.load_travel_tour_sample("properties_transfer")
#      Spree::TravelTourSample.load_travel_tour_sample("shipping_categories")  
#      Spree::TravelTourSample.load_travel_tour_sample("products")  
#      Spree::TravelTourSample.load_travel_tour_sample("taxonomy_categories")      
#      Spree::TravelTourSample.load_travel_tour_sample("taxon_category")
#      Spree::TravelTourSample.load_travel_tour_sample("taxons_hotel")
#      Spree::TravelTourSample.load_travel_tour_sample("taxons_flight")            
#      Spree::TravelTourSample.load_travel_tour_sample("taxons_program")      
#      Spree::TravelTourSample.load_travel_tour_sample("taxons_tour")
#      Spree::TravelTourSample.load_travel_tour_sample("taxons_transfer")
#      Spree::TravelTourSample.load_travel_tour_sample("taxons_car_rental")      
#      Spree::TravelTourSample.load_travel_tour_sample("taxonomy_destinations")
#      Spree::TravelTourSample.load_travel_tour_sample("taxons_destination")
      
#      Spree::TravelTourSample.load_travel_tour_sample("taxonomy_flight_destinations")
#      Spree::TravelTourSample.load_travel_tour_sample("taxons_flight_destination")
      
#      Spree::TravelTourSample.load_travel_tour_sample("taxonomy_things_to_do")
#      Spree::TravelTourSample.load_travel_tour_sample("taxons_thing_to_do")      
      #temporal because shipping category is a required field to Product model
     #      Spree::TravelTourSample.load_travel_tour_sample("product_properties")
#      Spree::TravelTourSample.load_travel_tour_sample("product_option_types")    

#      Spree::TravelTourSample.load_travel_tour_sample("variants")    
      
#      Spree::TravelTourSample.load_travel_tour_sample("assets")    
           

    end
  end
end
