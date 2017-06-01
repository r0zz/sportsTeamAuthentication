# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require'csv'
csv_text = File.read('C:\Sites\sportsTeamsClass\db\sportsTeams.txt')
mycsv=CSV.parse(csv_text,:headers=>true,:col_sep=>"\t")

mycsv.each do |row|
    #SportsTeam.create(teamName:row[0], city:row[1], stadium:row[2], league:row[3])
    # League.create(name:row[3])
    # City.create(name:row[1])

    # cityObj = City.where(name:row[1])
    # cityId = cityObj.ids[0]

    # leagueObj = League.where(name:row[3])
    # leagueId = leagueObj.ids[0]

    # Stadium.create(name:row[2], city_id:cityId)

    # stadiumObj = Stadium.where(name:row[2])
    # stadiumId = stadiumObj.ids[0]

    # #has to be last due to foreign keys
    # Team.create(name:row[0], city_id:cityId, league_id:leagueId, stadium_id:stadiumId)
end