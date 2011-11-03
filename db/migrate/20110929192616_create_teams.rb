class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      t.integer :user_id
      t.string :name
      t.string :city
      t.string :state
      t.string :organization
      t.string :sport
      t.timestamps
    end
  end

  def self.down
    drop_table :teams
  end
end
