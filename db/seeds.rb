Banner.delete_all

Banner.create!(banner_type: 'banner', 
	place: 'top',
	link: 'www.example-top.com'
	)

Banner.create!(banner_type: 'banner', 
	place: 'right',
	link: 'www.example-right.com',
	)

Banner.create!(banner_type: 'banner', 
	place: 'bottom',
	link: 'www.example-bottom.com',
	)

Banner.create!(banner_type: 'banner', 
	place: 'left',
	link: 'www.example-left.com',
	)
