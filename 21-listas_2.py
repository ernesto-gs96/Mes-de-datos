gravity_on_earth = 1.0
gravity_on_the_moon = 0.166

gravity_on_planets = [0.378, 0.907, 1, 0.377, 2.36, 0.916, 0.889, 1.12]

bus_weight = 12650 # in kilograms, on Earth

print("On Earth, a double-decker bus weighs", bus_weight, "kg")
print("On Mercury, a double-decker bus weighs", bus_weight * gravity_on_planets[0], "kg")

# min - devuelve el más pequeño
print("The lightest a bus would be in the solar system is", bus_weight * min(gravity_on_planets), "kg")

# max - devuelve el número más grande
print("The heaviest a bus would be in the solar system is", bus_weight * max(gravity_on_planets), "kg")