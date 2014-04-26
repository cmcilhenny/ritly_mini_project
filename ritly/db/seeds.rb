# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

two_weeks_ago = Date.today.weeks_ago 2

urls = Url.create([
	{link: "http://www.generalassemb.ly", random_string: "m1gpLHq8aoY", created_at: two_weeks_ago, updated_at: two_weeks_ago},
	{link: "http://www.google.com", random_string: "T7DViXiIxFE", created_at: two_weeks_ago, updated_at: two_weeks_ago},
	{link: "http://www.bustedtees.com", random_string: "pxMpvdB8LRw", created_at: two_weeks_ago, updated_at: two_weeks_ago}

	])