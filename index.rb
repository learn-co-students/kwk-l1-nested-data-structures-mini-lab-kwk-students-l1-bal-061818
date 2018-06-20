# example ingredients array
ingredients = [
    ["rye", "sourdough", "baguette"],
    ["ham", "salami", "turkey"],
    ["swiss", "munster", "cheddar"],
    ["mayo", "mustard", "tabasco"]
]

def sandwich_request(ingredients, order)
  all = []
  ingredients.each do |sub_ingredients|
    for i in 0..2
      all << sub_ingredients[i]
    end
  end
  order.each do |part|
    if all.count(part) == 0
      return false
    end
  end
  return true
end


# example city_info hash
cities = {
  :new_york => {
    :mayor => "Bill DeBlasio",
    :population => 8337000,
    :website => "http://www.nyc.gov"
  },
  :los_angeles => {
    :mayor => "Eric Garcetti",
    :population => 3884307,
    :website => "http://www.lacity.org"
  },
  :miami => {
    :mayor => "Tomás Regalado",
    :population => 419777,
    :website => "http://www.miamigov.com"
  },
  :chicago => {
    :mayor => "Rahm Emanuel",
    :population => 2695598,
    :website => "http://www.cityofchicago.org/"
  }
}

def city_populations(cities)
  population = 0
  cities.each do |city, info|
    population += info.values[1]
  end
  return population
end
