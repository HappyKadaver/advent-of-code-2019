MINIMUM_MASS_FOR_FUEL = (1 + 2) * 3 # (<target_mass> + 2) * 3

def get_fuel_for_mass(mass)
  fuel_needed = (mass / 3) - 2
  fuel_needed = fuel_needed + get_fuel_for_mass(fuel_needed) if fuel_needed >= MINIMUM_MASS_FOR_FUEL
  fuel_needed
end

result = IO.foreach('../input.txt')
             .map(&:to_i)
             .map(&method(:get_fuel_for_mass))
             .reduce 0, &:+
puts result