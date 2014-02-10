# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


tournaments = []
tournaments << Tournament.create(name: "Bandon Trip", player_count: "14", 
                                number_rounds: "3", course: "Lodge at Bandon" )



players = [] 

players << Player.create(name: "Bryan Hellum", handicap: "7", email: "bryan@email.com", password: "foobar1", 
                        password_confirmation: "foobar1", city: "Beaverton", state: "Oregon")
players << Player.create(name: "Robb Page", handicap: "5", email: "robb@email.com", password: "foobar2", 
                        password_confirmation: "foobar2", city: "Norco", state: "California")
players << Player.create(name: "Mike Payne", handicap: "13", email: "mike@email.com", password: "foobar3", 
                        password_confirmation: "foobar3", city: "Beaverton", state: "Oregon")
players << Player.create(name: "Damon Sullivan", handicap: "32", email: "damon@email.com", password: "foobar4", 
                        password_confirmation: "foobar4", city: "Portland", state: "Oregon")
players << Player.create(name: "Pat Anderson", handicap: "32", email: "pat@email.com", password: "foobar5", 
                        password_confirmation: "foobar5", city: "Portland", state: "Oregon")
players << Player.create(name: "Scott Lovejoy", handicap: "5", email: "scott@email.com", password: "foobar6", 
                        password_confirmation: "foobar6", city: "Phoenix", state: "Arizona")
players << Player.create(name: "Randy Derbin", handicap: "7", email: "randy@email.com", password: "foobar7", 
                        password_confirmation: "foobar7", city: "Portland", state: "Oregon")
players << Player.create(name: "Jeremy Emerson", handicap: "13", email: "jeremy@email.com", password: "foobar8", 
                        password_confirmation: "foobar8", city: "Portland", state: "Oregon")
players << Player.create(name: "Eric Keele", handicap: "14", email: "eric@email.com", password: "foobar9", 
                        password_confirmation: "foobar9", city: "Portland", state: "Oregon")
players << Player.create(name: "Jack Weast", handicap: "25", email: "jack@email.com", password: "foobar10", 
                        password_confirmation: "foobar10", city: "Portland", state: "Oregon")
players << Player.create(name: "Chris Lugar", handicap: "14", email: "chris@email.com", password: "foobar11", 
                        password_confirmation: "foobar11", city: "Portland", state: "Oregon")
players << Player.create(name: "David Chin", handicap: "11", email: "david@email.com", password: "foobar12", 
                        password_confirmation: "foobar12", city: "Portland", state: "Oregon")
players << Player.create(name: "Jon Laufenberg", handicap: "14", email: "jon@email.com", password: "foobar14", 
                        password_confirmation: "foobar14", city: "Portland", state: "Oregon")


scores = []
scores << Score.create(player_id: 1, tournament_id: 1, gross_score: 77)
scores << Score.create(player_id: 2, tournament_id: 1, gross_score: 90)
scores << Score.create(player_id: 3, tournament_id: 1, gross_score: 90)
scores << Score.create(player_id: 4, tournament_id: 1, gross_score: 90)
scores << Score.create(player_id: 5, tournament_id: 1, gross_score: 90)
scores << Score.create(player_id: 6, tournament_id: 1, gross_score: 90)
scores << Score.create(player_id: 7, tournament_id: 1, gross_score: 90)
scores << Score.create(player_id: 8, tournament_id: 1, gross_score: 90)
scores << Score.create(player_id: 9, tournament_id: 1, gross_score: 90)
scores << Score.create(player_id: 10, tournament_id: 1, gross_score: 90)
scores << Score.create(player_id: 11, tournament_id: 1, gross_score: 90)
scores << Score.create(player_id: 12, tournament_id: 1, gross_score: 90)
scores << Score.create(player_id: 13, tournament_id: 1, gross_score: 90)


tournaments[0].players << players[0]
tournaments[0].players << players[1]
tournaments[0].players << players[2]
tournaments[0].players << players[3]
tournaments[0].players << players[4]
tournaments[0].players << players[5]
tournaments[0].players << players[6]
tournaments[0].players << players[7]
tournaments[0].players << players[8]
tournaments[0].players << players[9]
tournaments[0].players << players[10]
tournaments[0].players << players[11]
tournaments[0].players << players[12]







