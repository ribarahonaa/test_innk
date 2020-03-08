json.extract! film, :id, :title, :gender, :price, :duration, :created_at, :updated_at
json.url film_url(film, format: :json)
