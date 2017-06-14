json.extract! player, :id, :DisplayName, :MemberId, :Membertype, :CharacterId, :Playertype, :created_at, :updated_at
json.url player_url(player, format: :json)
