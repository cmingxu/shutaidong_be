json.array!(@taidongs) do |taidong|
  json.extract! taidong, :id, :happened_at, :account_id, :batch_id
  json.url taidong_url(taidong, format: :json)
end
