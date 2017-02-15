require 'net/http'
require 'json'

# The high is 52, and the low is 31 today.
# It's going to be warmer than it was yesterday.
# Bring an umbrella.

key = "a0e5b76d77388c497a567c94f226c4f4"

lat = "41.245911"
long = "-95.933366"

uri  = URI("https://api.darksky.net/forecast/" + key + "/" + lat + "," + long)

puts uri
weather_hash = JSON.parse(Net::HTTP.get(uri))

todays_high = weather_hash["daily"]["data"][0]["temperatureMax"]
todays_low = weather_hash["daily"]["data"][0]["temperatureMin"]
todays_precip = weather_hash["daily"]["data"][0]["precipProbability"]

yesterday = "1486944000"
uri2 = URI("https://api.darksky.net/forecast/" + key + "/" + lat + "," + long)
