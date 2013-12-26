#encoding: utf-8
tours_feature  = Spree::PropertyType.find_by_name!("Tours Feature")

Spree::Property.create!([
	{
		presentation: 'Days',
		name: 'tours-days',
		property_type: tours_feature
	},
	{
		presentation: 'Accommodation',
		name: 'tours-accommodation',
		property_type: tours_feature
	},
	{
		presentation: 'Transfer',
		name: 'tours-transfer',
		property_type: tours_feature
	},
	{
		presentation: 'Flight',
		name: 'tours-flight',
		property_type: tours_feature
	},
	{
		presentation: 'Ship',
		name: 'tours-ship',
		property_type: tours_feature
	},
	{
		presentation: 'Duration',
		name: 'tours-duration',
		property_type: tours_feature
	},
	{
		presentation: 'Start time',
		name: 'tours-start-time',
		property_type: tours_feature
	},
	{
		presentation: 'End time',
		name: 'tours-end-time',
		property_type: tours_feature
	}
])
