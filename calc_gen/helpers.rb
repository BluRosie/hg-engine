require 'pry'


def parse_level(set_constants, level_data)
  level_data = level_data.split("level ")[-1]
  level_value = 1

  if is_int?(level_data)
    return Integer(level_data)
  else
    level_mod = level_data.split("+")[-1].strip

    if is_int?(level_mod)
      level_mod = Integer(level_mod)
    else
      level_mod = 0
    end


    constant_name = level_data.split("+")[0].strip

    if set_constants[constant_name]
      level_value = set_constants[constant_name]
    end

    level_value += level_mod
  end

  level_value
end

def showdown_parse(str)
  substitutions = {
    "minds eye" => "Mind's Eye",
    "heavy duty" => "Heavy-Duty",
    "never melt" => "Never-Melt",
    "well baked" => "Well-Baked",
    "rks system" => "RKS System",
    "soul heart" => "Soul-Heart"
  }

  formatted_str = str.downcase.split("_").map(&:capitalize).join(" ")

  # Use a single regex to find all keys and replace them
  formatted_str.gsub(/\b(#{substitutions.keys.join('|')})\b/i) do |match|
    substitutions[match.downcase]
  end
end


def parse_ability(str)
  if str.include?(":")
    ability = str.split("? ")[-1].split(" : ")[0]
  else
    ability = str.split(" ")[1].strip
  end

  showdown_parse(ability.gsub("ABILITY_", ""))
end

def parse_move(str)
  if str.include?(":")
    move = str.split("? ")[-1].split(" : ")[0]
  else
    move = str
  end


  move
end

def self.get_nature_id level, species, difficulty, trainer_id, trainer_class, gender, ability
    seed = (level + species + difficulty + trainer_id).to_s(16)


    trainer_class.times do 
      seed = seed.to_i 16
      result = 0x41C64E6D * seed + 0x00006073
      seed = result.to_s(16)[-8..-1]
    end
    # binding.pry
    result = seed[0...-4]

    if result != ""
      mid_bytes = result[-4..-1]
    else
      mid_bytes = seed
    end
    low_bytes = gender == "male" ? "88" : "78"
    high_bytes = "00"

    pid =  high_bytes + mid_bytes + low_bytes

    ab = ability > 0 ? 1 : 0

    # add ab if hgss
    nature_id = ((pid.to_i(16).to_s[-2..-1].to_i) + ab) % 25

    nature_id
  end


def is_int?(str)
  Integer(str) rescue false
end


def self.form_info
    forms = {}
    forms["Deoxys"] = ['Attack', 'Defense', 'Speed']
    forms["Shaymin"] = ["Sky"]
    forms["Giratina"] = ["Origin"]
    forms["Rotom"] = ["Heat", "Wash", "Frost", "Fan", "Mow"]
    forms["Castorm"] = ["Sunny", "Rainy", "Snowy"]
    forms["Basculin"] = ["Blue-Striped"]
    forms["Darmanitan"] = ["Zen"]
    forms["Meloetta"] = ["Pirouette"]
    forms["Kyurem"] = ["White", "Black"]
    forms["Keldeo"] = ["Resolute"]
    forms["Tornadus"] = ["Therian"]
    forms["Thundurus"] = ["Therian"]
    forms["Landorus"] = ["Therian"]
    forms["Wormadam"] = ["Sandy", "Trash"]
    forms["Genesect"] = ["Douse", "Chill", "Burn", "Shock"]
    forms["Kyogre"] = ["Primal"]
    forms["Groudon"] = ["Primal"]
    ["Rattata", "Raticate", "Raichu", "Sandshrew", "Sandslash", "Vulpix","Ninetales", "Diglett", "Dugtrio","Meowth", "Persian", "Geodude", "Graveler", "Golem", "Grimer", "Muk", "Exeggutor", "Marowak"].each do |species|
      forms[species] ||= []
      forms[species] << "Alola"
    end

    ["Ponyta", "Rapidash", "Slowpoke", "Slowbro", "Farfetch’d", "Weezing", "Mr. Mime", "Articuno", "Zapdos", "Moltres", "Slowking", "Corsola", "Zigzagoon", "Linoone", "Darumaka", "Darmanitan","Yamask", "Stunfisk"].each do |species|
      forms[species] ||= []
      forms[species] << "Galar"
    end
    

    forms
end



