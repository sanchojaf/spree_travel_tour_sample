module Spree
  module TravelTourSample
    def self.load_travel_tour_sample(file)
      path = File.expand_path(travel_tour_samples_path + "#{file}.rb")
      # Check to see if the specified file has been loaded before
      if !$LOADED_FEATURES.include?(path)
        require path
        puts "Loaded #{file.titleize} travel tour samples"
      end
    end

    private
      def self.travel_tour_samples_path
        Pathname.new(File.join(File.dirname(__FILE__), '..', '..', 'db', 'travel_tour_samples'))
      end
  end
end
