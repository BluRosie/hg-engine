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
  str.downcase.split("_").map(&:capitalize).join(" ").gsub("Minds Eye", "Mind's Eye").gsub("Heavy Duty", "Heavy-Duty").gsub("Never Melt", "Never-Melt").gsub("Well Baked", "Well-Baked").gsub("Rks System", "RKS System").gsub("Soul Heart", "Soul-Heart")
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



