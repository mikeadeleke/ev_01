class Memberships < ActiveRecord::Migration
  def change
  end

  create_join_table :playlists, :startups
end
