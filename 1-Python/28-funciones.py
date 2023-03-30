# def - indinca que es una fucion
# distance_from_earth - nombre de la funcion
# destination - argumento a recibir, puede o no tener argumentos al igual que return
def distance_from_earth(destination):
    if destination == "Moon":
        return "238,855"
    else:
        return "Unable to compute to that destination"
    
print(distance_from_earth("Moon"))

# Varios argumentos
def days_to_complete(distance, speed):
    hours = distance/speed
    return hours/24

print(days_to_complete(238855, 75))

# Funciones como arguemntos
total_days = days_to_complete(238855, 75)
print(round(total_days))

print(round(days_to_complete(238855, 75))) # una mejor manera

# argumetos por default
from datetime import timedelta, datetime

def arrival_time(hours=51):
    now = datetime.now()
    arrival = now + timedelta(hours=hours)
    return arrival.strftime("Arrival: %A %H:%M")

print(arrival_time())

# si un argumento no tiene un valor default siempre se va a esperar
def arrival_time2(destination, hours=51):
    now = datetime.now()
    arrival = now + timedelta(hours=hours)
    return arrival.strftime(f"{destination} Arrival: %A %H:%M")

print(arrival_time2("Moon"))