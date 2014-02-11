json.array!(@accounts) do |account|
  json.extract! account, :id, :email, :encrypted_password, :salt, :last_sync_at
  json.url account_url(account, format: :json)
end
