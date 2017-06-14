class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :gamertag
      t.string :PSN_id

      t.timestamps
    end
  end
end
