json.array!(@playlists) do |playlist|
  json.extract! playlist, :name
  json.url playlist_url(playlist, format: :json)
end