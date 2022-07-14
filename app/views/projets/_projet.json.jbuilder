json.extract! projet, :id, :title, :heroImg, :content, :start_date, :slug, :status, :amount, :user_id, :created_at, :updated_at
json.url projet_url(projet, format: :json)
