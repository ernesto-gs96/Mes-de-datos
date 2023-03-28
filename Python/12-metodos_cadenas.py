heading = "saturn has a daytime temperature of -170 degrees Celsius, while Mars has -28 Celsius."
# title - primera letra en MAYUSCULA
print(heading.title())

# split - convertir en array
print(heading.split())
print(heading.split(','))

# join - reagrupar elementos en una cadena
print("".join(heading.split()))

# lower - convertir toda la cadena en minusculas
print(heading.lower())

# upper - convertir toda la cadena en MAYUSCULAS
print(heading.upper())

# startswith - comparar inicio de cadena
print(heading.startswith('S'))

# endswith - comparar fin de cadena
print(heading.endswith("."))

# replace - remplaza un valor de la cadena por otro
print(heading.replace("Celsius", "C"))