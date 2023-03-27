# ** - permite recibir multiples argumentos con claves
def variable_length(**kwargs):
    print(kwargs)
    
variable_length(tanks=1, day="Wednesday", pilots=3)


def crew_members(**kwargs):
    print(f"{len(kwargs)} astronauts assigned for this mission:")
    for title, name in kwargs.items():
        print(f"{title}: {name}")
        
crew_members(captain="Neil Armstrong", pilot="Buzz Aldrin", command_pilot="Michael Collins")

# Evitar repetir las claves