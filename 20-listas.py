planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]

# Acceso a elementos de lista por índice
print("The first planet is", planets[0])
print("The second planet is", planets[1])
print("The third planet is", planets[2])

# modificar valores
planets[3] = "Red Planet"
print("Mars is also known as", planets[3])

# Determinación de la longitud de una lista
number_of_planets = len(planets)
print("There are", number_of_planets, "planets in the solar system.")

# Incorporación de valores a listas
planets.append("Pluto")
number_of_planets = len(planets)
print("There are actually", number_of_planets, "planets in the solar system.")

# Eliminación de valores de listas
planets.pop()  # Goodbye, Pluto
number_of_planets = len(planets)
print("No, there are definitely", number_of_planets, "planets in the solar system.")

# Uso de índices negativos
print("The last planet is", planets[-1])
print("The penultimate planet is", planets[-2])

# Búsqueda de un valor en una lista
jupiter_index = planets.index("Jupiter")
print("Jupiter is the", jupiter_index + 1, "planet from the sun")