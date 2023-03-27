rainfall = {
    'october': 3.5,
    'november': 4.2,
    'december': 2.1
}

# keys - devuelve un objeto de lista que contiene todas las claves.
for key in rainfall.keys():
    print(f'{key}: {rainfall[key]}cm')

# in - comprobar si la clave existe
if 'december' in rainfall:
    rainfall['december'] = rainfall['december'] + 1
else:
    rainfall['december'] = 1

# values - devuelve la lista de todos los valores de un diccionario sin sus claves
total_rainfall = 0
for value in rainfall.values():
    total_rainfall = total_rainfall + value

print(f'There was {total_rainfall}cm in the last quarter')