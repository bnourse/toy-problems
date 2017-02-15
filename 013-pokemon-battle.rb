$types = ["normal","fire","water","electric","grass","ice","fighting","poison","ground","flying","psychic","bug","rock","ghost","dragon","dark","steel","fairy"]

$type_chart = {
      "normal" => [1,1,1,1,1,1,1,1,1,1,1,1,0.5,0,1,1,0.5,1], #Normal Attacking
      "fire" => [1,0.5,0.5,1,2,2,1,1,1,1,1,2,0.5,1,0.5,1,2,1], #Fire Attacking
      "water" => [1,2,0.5,1,0.5,1,1,1,2,1,1,1,2,1,0.5,1,1,1], #Water Attacking
      "electric" => [1,1,2,0.5,0.5,1,1,1,0,2,1,1,1,1,0.5,1,1,1], #Electric Attacking
      "grass" => [1,0.5,2,1,0.5,1,1,0.5,2,0.5,1,0.5,2,1,0.5,1,0.5,1], #Grass Attacking
      "ice" => [1,0.5,0.5,1,0.5,1,1,0.5,2,0.5,1,0.5,2,1,0.5,1,0.5,1], #Ice Attacking
      "fighting" => [2,1,1,1,1,2,1,0.5,1,0.5,0.5,0.5,2,0,0.5,1,0.5,1], #Fighting Attacking
      "poison" => [1,1,1,1,2,1,1,0.5,0.5,1,1,1,0.5,0.5,1,1,0,2], #Poison Attacking
      "ground" => [1,2,1,2,0.5,1,1,2,1,0,1,0.5,2,1,1,1,2,1], # Ground Attacking
      "flying" => [1,1,1,0.5,2,1,2,1,1,1,1,2,0.5,1,1,1,0.5,1], # Flying Attacking
      "psychic" => [1,1,1,1,1,1,2,2,1,1,0.5,1,1,1,1,0,0.5,1], # Psychic Attacking
      "bug" => [1,0.5,1,1,2,1,0.5,0.5,1,0.5,2,1,1,0.5,1,2,0.5,0.5], #Bug Attacking
      "rock" => [1,2,1,1,1,2,0.5,1,0.5,2,1,2,1,1,1,1,0.5,1], # Rock Attacking
      "ghost" => [0,1,1,1,1,1,1,1,1,1,2,1,1,2,1,0.5,1,1], #Ghost Attacking
      "dragon" => [1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,0.5,0], #Dragon Attacking
      "dark" => [1,1,1,1,1,1,0.5,1,1,1,2,1,1,2,1,0.5,1,0.5], # Dark Attacking
      "steel" => [1,0.5,0.5,0.5,1,2,1,1,1,1,1,1,2,1,1,1,0.5,2], # Steel Attacking
      "fairy" => [1,0.5,1,1,1,1,2,0.5,1,1,1,1,1,1,2,2,0.5,1] # Fairy Attacking
}

multiplier = 0 
attacker_type = "fire"
target_types = ["grass","ice"]

def get_multiplier(attacker_type, target_types)
      multiplier = 1
      for target_type in target_types
            multiplier *= $type_chart[attacker_type][$types.index(target_type)]
      end
      return multiplier
end

puts get_multiplier("fire", ["grass","ice"])

battle_hash = {
      "fire" => ["grass"],
      "fighting" => ["ice","rock"],
      "psychic" => ["poison", "dark"],
      "water" => ["normal"],
      "fire" => ["rock"]
}

def fight_all(battles) 
      for attacker in battles
            puts get_multiplier(attacker, battles[attacker])
      end
end

fight_all(battle_hash)

