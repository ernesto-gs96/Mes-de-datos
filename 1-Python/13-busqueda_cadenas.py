temperatures = """Saturn has a daytime temperature of -170 degrees Celsius,
... while Mars has -28 Celsius."""

# Saber si existe en la cadena
print("Moon" in temperatures)
print("Mars" in temperatures)

# Saber posición
print(temperatures.find("Moon"))
print(temperatures.find("Mars"))

# Veces encontrada
print(temperatures.count("Moon"))
print(temperatures.count("Mars"))