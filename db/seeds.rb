# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



k = User.create(profile_id: 1, email: "kns@test.com", password: "Thisisatest")
z = User.create(profile_id: 2, email: "z@test.com", password: "Thisisatest")


n = Profile.create(fname: "Kyle N.", lname: "Smith", city: "Wilmington", state: "Delaware", user_id: 1)
s = Profile.create(fname: "Zi-Xiang", lname: "Shen", city: "Wilmington", state: "Delaware", user_id: 2)

# k << n
# z << s 

Admin.create(user_id: 1)
Director.create(user_id: 1, group_id: 1)
Bracket.create(name: "125", event_id: 1)
Bracket.create(name: "133", event_id: 1)
Bracket.create(name: "141", event_id: 1)
Bracket.create(name: "149", event_id: 1)
Event.create(event_name: "2015 NCAA Wrestling Championship")

Group.create(gname: "Beta Global Group")
Group.create(gname: "Clarion '09", gtype: 2)
Group.create(gname: "Test Group 3")


GroupEvent.create(group_id: 1, event_id: 1)

Invitation.create(user_id: 1, group_id: 1)
Invitation.create(user_id: 2, group_id: 1)
Invitation.create(user_id: 1, group_id: 2)
Invitation.create(user_id: 1, group_id: 3)

Competitor.create(fname: "Angel", lname: "Escabedo", team: "Indiana")
Competitor.create(fname: "Garrett", lname: "Frey", team: "Princeton")
Competitor.create(fname: "Shane", lname: "Young", team: "WVU")
Competitor.create(fname: "Frank", lname: "Lomas", team: "Bakersfield")
Competitor.create(fname: "Jarrod", lname: "Patterson", team: "Oklahoma")
Competitor.create(fname: "Brad", lname: "Pataky", team: "Penn State")
Competitor.create(fname: "James", lname: "Knox", team: "Maryland")
Competitor.create(fname: "Matt", lname: "Steintager", team: "Central Michigan")
Competitor.create(fname: "Andrew", lname: "Long", team: "Iowa State")
Competitor.create(fname: "Ryan", lname: "Mango", team: "Stanford")
Competitor.create(fname: "Steve", lname: "Keith", team: "Harvard")
Competitor.create(fname: "Ben", lname: "Kjar", team: "Utah Valley")
Competitor.create(fname: "Jonathan", lname: "Childress", team: "Liberty")
Competitor.create(fname: "Tony", lname: "Gravely", team: "Appalachian State")
Competitor.create(fname: "Ross", lname: "Gitomer", team: "Virginia")
Competitor.create(fname: "Anthony", lname: "Robles", team: "Arizona State")
Competitor.create(fname: "Matt", lname: "McDonough", team: "Iowa")
Competitor.create(fname: "Jason", lname: "Lara", team: "Oregon State")
Competitor.create(fname: "Anthony", lname: "Zanetta", team: "Pitt")
Competitor.create(fname: "Andre", lname: "Gonzales", team: "Fullerton")
Competitor.create(fname: "Michael", lname: "Martines", team: "Wyoming")
Competitor.create(fname: "Aaron", lname: "Kalil", team: "Navy")
Competitor.create(fname: "Jarrod", lname: "Garnett", team: "Virginia Tech")
Competitor.create(fname: "Zach", lname: "Sanders", team: "Minnesota")
Competitor.create(fname: "James", lname: "Nicholson", team: "Old Dominion")
Competitor.create(fname: "Cashe", lname: "Quiroga", team: "Purdue")
Competitor.create(fname: "Joseph", lname: "Langel", team: "Rutgers")
Competitor.create(fname: "Chris", lname: "Notte", team: "Oklahoma State")
Competitor.create(fname: "Nikko", lname: "Triggas", team: "Ohio State")
Competitor.create(fname: "Fred", lname: "Santaite", team: "Boston")
Competitor.create(fname: "Allen", lname: "Bartelli", team: "Boise State")
Competitor.create(fname: "Troy", lname: "Nickerson", team: "Cornell")
Competitor.create(fname: "Eric", lname: "Morrill", team: "Edinboro")

# Dummy - not in a bracket
Competitor.create(fname: "KN", lname: "Smith", team: "Test")

CompetitorBracket.create(competitor_id: 4, bracket_id: 1)
CompetitorBracket.create(competitor_id: 12, bracket_id: 1)
CompetitorBracket.create(competitor_id: 30, bracket_id: 1)
CompetitorBracket.create(competitor_id: 24, bracket_id: 3)
CompetitorBracket.create(competitor_id: 31, bracket_id: 3)



Match.create(first_competitor_id: 4, second_competitor_id: 30, bracket_id: 1, )
Match.create(first_competitor_id: 14, second_competitor_id: 23, bracket_id: 2, )
Match.create(first_competitor_id: 24, second_competitor_id: 31, bracket_id: 3, )
Match.create(first_competitor_id: 4, second_competitor_id: 12, bracket_id: 1, )

Draft.create(event_id: 1, group_id: 1, user_id: 2)
Draft.create(event_id: 1, group_id: 1, user_id: 2)

CompetitorDraft.create(competitor_id: 4, draft_id: 1, bracket_id: 1)
CompetitorDraft.create(competitor_id: 31, draft_id: 1, bracket_id: 3)


