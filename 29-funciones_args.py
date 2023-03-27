# * - permite reibir multiples argumentos a nuestra funcion sin declarar las variables
def variable_length(*args):
    print(args)
    
# si argumentos
variable_length()

# multiples argumentos
variable_length("one", "two")


def sequence_time(*args):
    total_minutes = sum(args)
    if total_minutes < 60:
        return f"Total time to launch is {total_minutes} minutes"
    else:
        return f"Total time to launch is {total_minutes/60} hours"
    
print(sequence_time(4, 14, 18))
print(sequence_time(4, 14, 48))

# Cuando se usan argumentos de variable, a cada valor ya no se le asigna un nombre de variable. 
# Todos los valores ahora forman parte del nombre de variable catch-all que usa el asterisco (en estos ejemplos, args).