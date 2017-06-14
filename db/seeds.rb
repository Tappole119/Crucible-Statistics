# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.destroy_all

Player.create!([{
    DisplayName: "RecordedLunick",
    MemberId: "4611686018429800327",
    Membertype: "1",
    CharacterId: "2305843009215100127",
    Playertype: "Response"
    },

	{
    DisplayName: "DrBaker117",
    MemberId: "4611686018429817613",
    Membertype: "1",
    CharacterId: "2305843009216799794",
    Playertype: "Response"
    },

	{
    DisplayName: "WhiteThunder",
    MemberId: "4611686018429800327",
    Membertype: "1",
    CharacterId: "2305843009215101435",
    Playertype: "Response"
    }
    ])

p "Created #{Player.count} players"