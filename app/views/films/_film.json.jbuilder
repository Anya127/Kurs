json.extract! film, :id, :name_f, :genre_f, :lasting_f, :country_f, :companies_f, :min_age, :created_at, :updated_at
json.url film_url(film, format: :json)
