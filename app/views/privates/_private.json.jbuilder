json.extract! private, :id, :title, :content, :user_id, :created_at, :updated_at
json.url private_url(private, format: :json)
