class CreateSportsTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :sports_teams do |t|
      t.string :teamName
      t.string :city
      t.string :stadium
      t.string :league

      t.timestamps
    end
  end
end
