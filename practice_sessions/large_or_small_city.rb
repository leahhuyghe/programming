
bc_cities_population = {
  vancouver: 2135201,
  victoria:  316327,
  abbotsford: 149855,
  kelowna: 141767,
  nanaimo:  88799,
  white_rock: 82368,
  kamloops: 73472,
  chilliwack: 66382
  }

def city(cities)
  cities.each do |city, population|
    city = city.to_s.gsub(", ")
    if pop > 50000
      puts "#{city} is a big city"
    else
      puts "#{city} is a town!"
    end
  end
end

city_size(bc_cities_population)
