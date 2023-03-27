# Estructura
planet = {
    'name': 'Earth',
    'moons': 1
}

# Se puede almacenar diccionarios dentro de diccionarios
planet['diameter (km)'] = {
    'polar': 133709,
    'equatorial': 142984
}

# Recuperación de valores
print(f'{planet["name"]} polar diameter: {planet["diameter (km)"]["polar"]}')