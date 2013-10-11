class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :name

      t.timestamps
    end

    create_table :user do |t|
    	t.belongs_to :user
    	t.datetime :playlist_date
    	t.timestamps
    end

  end
end
