class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name
      t.string :URl
      t.text :description

      t.timestamps
    end

    create_table :playlists do |t|
    	t.belongs_to :startup
    	t.datetime :playlist_date
    	t.timestamps
    end

    create_table :user do |t|
      t.belongs_to :startup
      t.timestamps
    end
  end
end
