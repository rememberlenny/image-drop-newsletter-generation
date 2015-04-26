json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, :id, :title, :description
  json.url newsletter_url(newsletter, format: :json)
end
