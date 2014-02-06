# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


tournaments []
tournaments << Tournament.create(name: "Bandon Trip", player_count: "16", 
                                number_rounds: "3", course: "Lodge at Bandon" )

                                