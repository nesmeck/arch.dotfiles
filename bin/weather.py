import pyowm

# -*- coding: utf-8 -*-

owm = pyowm.OWM('1e2a5c80bec78c8269fdd3b4f7eb2930')
observation = owm.weather_at_place("Tijuana, MX")
w = observation.get_weather()
temperature = w.get_temperature('celsius')
temperature = temperature['temp_max']
status = w.get_status()

print status, int(temperature)
