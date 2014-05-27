json.array!(@vids) do |vid|
  json.extract! vid, :id, :title, :description, :youtube_url, :user_id
  json.url vid_url(vid, format: :json)
end
