# Lesson Text:
##########
# Python:
# --------
# import requests
# import pprint

# query_params = { 'apikey': 'API_KEY',
#              'phrase': 'fiscal cliff' 
#            }

# endpoint = 'http://capitolwords.org/api/text.json'

# response = requests.get( endpoint, params=query_params)
# data = response.json

# pprint.pprint(data)

################
# Ruby Version:#
################

require "open-uri"
require "pp"
require 'json'

# query_params = { 'apikey' => 'API_KEY', 'phrase' => 'fiscal cliff' }

endpoint = 'http://capitolwords.org/api/1/text.json'

response = open(endpoint + '?phrase=fiscal+cliff' + "&apikey=______your-api-key-here______").read

data = JSON.parse(response)

pp data

# Note:
  # the codeacademy endpoint given in the lesson is: 'http://capitolwords.org/api/text.json'
  # the real root api is:  http://capitolwords.org/api/1/ , (official documentation there).
  # example query to the dates.json endpoint:  http://capitolwords.org/api/1/dates.json?apikey=<YOUR_KEY>