class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :DisplayName
      t.string :MemberId
      t.string :Membertype
      t.string :CharacterId
      t.text :Playertype

      t.timestamps
    end
  end
end
