import pandas as pd

data = {
    "timestamp": ["10:00", "10:05", "10:10", "10:15"],
    "temp": [22.5, 23.0, 22.8, 23.2],
    "humidity": [60, 58, 61, 57],
    "air_quality": [35, 40, 32, 45]
}

df = pd.DataFrame(data)

# suppose the DataFrame contains timestamp, temp, humidity and air_quality
temperatures = list(map(lambda row: row["temp"],
                        df.to_dict("records"))) # converts each DataFrame row into a dictionary.

print(temperatures)

readings = list(map( lambda row: (row["temp"], row["humidity"]), df.to_dict("records") ))

print (readings)