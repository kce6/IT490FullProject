import datetime
import json
import urllib.request
import sys

#Takes time in raw format and converts it to a more readable format
def time_converter(time):
    converted_time = datetime.datetime.fromtimestamp(
        int(time)
    ).strftime('%I:%M %p')
    return converted_time

#creates the URL to be used in the API call.  This function is important becuase
#it allows the script to take multiple different inputs such as zipcode, city name
#or unique city identifier
def url_builder(city_id):
    user_api = '79d39c31d2810edccbc44b02beeb85f0'  # Obtain yours form: http://openweathermap.org/
    unit = 'imperial'  # For Fahrenheit use imperial, for Celsius use metric, and the default is Kelvin.
    api = 'http://api.openweathermap.org/data/2.5/weather?zip='     # Search for your city ID here: http://bulk.openweathermap.org/sample/city.list.json.gz

    full_api_url = api + str(city_id) + '&mode=json&units=' + unit + '&APPID=' + user_api
    return full_api_url

#makes the actual API call
def data_fetch(full_api_url):
    url = urllib.request.urlopen(full_api_url)
    output = url.read().decode('utf-8')
    raw_api_dict = json.loads(output)
    url.close()
    return raw_api_dict

#takes the retrieved data and stores in in variables for output
def data_organizer(raw_api_dict):
    data = dict(
        city=raw_api_dict.get('name'),
        country=raw_api_dict.get('sys').get('country'),
        temp=raw_api_dict.get('main').get('temp'),
        temp_max=raw_api_dict.get('main').get('temp_max'),
        temp_min=raw_api_dict.get('main').get('temp_min'),
        humidity=raw_api_dict.get('main').get('humidity'),
        pressure=raw_api_dict.get('main').get('pressure'),
        sky=raw_api_dict['weather'][0]['main'],
        sunrise=time_converter(raw_api_dict.get('sys').get('sunrise')),
        sunset=time_converter(raw_api_dict.get('sys').get('sunset')),
        wind=raw_api_dict.get('wind').get('speed'),
        wind_deg=raw_api_dict.get('deg'),
        dt=time_converter(raw_api_dict.get('dt')),
        cloudiness=raw_api_dict.get('clouds').get('all')
    )
    return data

#function that outputs the API data.  Tried to have all of this written to files
#for historical information as well but couldnt get it fully functioning
def data_output(data):
    m_symbol = '\xb0' + 'C'
    print('---------------------------------------')
    print('Current weather in: {}, {}:'.format(data['city'], data['country']))
    #storageFile.write('Current weather in: {}, {}:'.format(data['city'], data['country']))
    print(data['temp'], m_symbol, data['sky'])
    #storageFile.write('data['temp'], m_symbol, data['sky'])
    print('Max: {}, Min: {}'.format(data['temp_max'], data['temp_min']))
    #storageFile.write
    print('')
    #storageFile.write
    print('Wind Speed: {}, Degree: {}'.format(data['wind'], data['wind_deg']))
    #storageFile.write
    print('Humidity: {}'.format(data['humidity']))
    #storageFile.write
    print('Cloud: {}'.format(data['cloudiness']))
    #storageFile.write
    print('Pressure: {}'.format(data['pressure']))
    #storageFile.write
    print('Sunrise at: {}'.format(data['sunrise']))
    #storageFile.write
    print('Sunset at: {}'.format(data['sunset']))
    #storageFile.write
    print('')
    #storageFile.write
    print('Last update from the server: {}'.format(data['dt']))
    #storageFile.write
    print('---------------------------------------')
    #storageFile.write

#runs the program with given paramters
if __name__ == '__main__':
    try:
        data_output(data_organizer(data_fetch(url_builder("07735"))))
    except IOError:
        print('no internet')
