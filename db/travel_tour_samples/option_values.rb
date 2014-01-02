#Spree::Sample.load_sample("option_types")

#size = Spree::OptionType.find_by_presentation!("Size")
#color = Spree::OptionType.find_by_presentation!("Color")
meal_plan = Spree::OptionType.find_by_presentation!("Meal plan")
how_long = Spree::OptionType.find_by_presentation!("How long")

Spree::OptionValue.create!([
=begin
  {
    :name => "Small",
    :presentation => "S",
    :position => 1,
    :option_type => size
  },
  {
    :name => "Medium",
    :presentation => "M",
    :position => 2,
    :option_type => size
  },
  {
    :name => "Large",
    :presentation => "L",
    :position => 3,
    :option_type => size
  },
  {
    :name => "Extra Large",
    :presentation => "XL",
    :position => 4,
    :option_type => size
  },
  {
    :name => "Red",
    :presentation => "Red",
    :position => 1,
    :option_type => color,
  },
  {
    :name => "Green",
    :presentation => "Green",
    :position => 2,
    :option_type => color,
  },
  {
    :name => "Blue",
    :presentation => "Blue",
    :position => 3,
    :option_type => color
  },
=end
  {
     :name => "Continental",
     :presentation => "CP",
     :position => 1,
     :option_type => meal_plan
  },  
  {
     :name => "American",
     :presentation => "AP",
     :position => 3,
     :option_type => meal_plan
  },
  {
     :name => "All inclusive",
     :presentation => "AI",
     :position => 4,
     :option_type => meal_plan
  },
  {
     :name => "Half day",
     :presentation => "Half day",
     :position => 1,
     :option_type => how_long
  },
  {
     :name => "All day",
     :presentation => "All day",
     :position => 2,
     :option_type => how_long
  },
  {
     :name => "Week",
     :presentation => "Week",
     :position => 3,
     :option_type => how_long
  },
  {
     :name => "Two week",
     :presentation => "Two week",
     :position => 4,
     :option_type => how_long
  }
])
