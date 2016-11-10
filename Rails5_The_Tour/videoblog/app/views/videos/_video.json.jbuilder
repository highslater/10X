json.extract! video, :id, :title, :category, :description, :size, :length, :created_at, :updated_at
json.url video_url(video, format: :json)