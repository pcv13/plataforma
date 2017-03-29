json.extract! request, :id, :estado, :agency, :tipo, :app, :os, :geo, :price, :agencyLink, :created_at, :updated_at
json.url request_url(request, format: :json)