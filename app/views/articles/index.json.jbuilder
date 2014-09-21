json.array!(@articles) do |article|
  json.extract! article, :id, :title, :category, :text, :user_id_id
  json.url article_url(article, format: :json)
end
