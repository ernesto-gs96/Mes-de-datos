# Estructura
planet = {
    'name': 'Earth',
    'moons': 1
}

# Lectura
print(planet.get('name'))
print(planet['name'])
# Aunque el comportamiento de get y los corchetes ([ ]) suele ser el mismo para recuperar elementos, 
# hay una diferencia principal. Si una clave no está disponible, get devuelve None y [ ] genera un error KeyError.

# Modificacion
planet.update({'name': 'Makemake'})
planet['name'] = 'Makemake'
# La principal ventaja de usar update es la capacidad de modificar varios valores en una operación.

# Using update
planet.update({
    'name': 'Jupiter',
    'moons': 79
})

# Using square brackets
planet['name'] = 'Jupiter'
planet['moons'] = 79

# al usar update realiza una sola llamada a la función, mientras que el uso de corchetes implica dos llamadas.

# Adición
planet['orbital period'] = 4333

# Eliminación
planet.pop('orbital period')