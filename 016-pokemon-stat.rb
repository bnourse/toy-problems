require 'net/http'
require 'json'

def faster(id1,id2)
	uri1 = URI('http://pokeapi.co/api/v2/pokemon/' + id1.to_s + '/')
	uri2 = URI('http://pokeapi.co/api/v2/pokemon/' + id2.to_s + '/')

	hash1 = JSON.parse(Net::HTTP.get(uri1))
	hash2 = JSON.parse(Net::HTTP.get(uri2))

	speed1 = hash1["stats"][0]["base_stat"]
	speed2 = hash2["stats"][0]["base_stat"]

	name1 = hash1["forms"][0]["name"]
	name2 = hash2["forms"][0]["name"]

	if speed1 == speed2
		return "tie"
	elsif speed1 > speed2
		return name1
	else
		return name2
	end

end

puts faster(5,20)


# { "stats" [ 
# 	{
# 		{ 
# 			"stat":{
# 			"name": "speed"
# 		},
# 		"base_stat": 45
# 	}
# }

