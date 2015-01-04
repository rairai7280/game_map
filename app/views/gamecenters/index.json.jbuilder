json.array!(@gamecenters) do |gamecenter|
  json.extract! gamecenter, :content, :user_id
  json.url gamecenter_url(gamecenter, format: :json)
end