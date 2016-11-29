require('sinatra')
require('sinatra/reloader')
also_reload ('lib/**/*.rb')
require('./lib/places')

get('/') do
  @places_array = Places.visited()
  erb(:index)
end

post('/input') do
  place = params.fetch('locale')
  test_place = Places.new(place)
  test_place.store()
  erb(:result)
end
