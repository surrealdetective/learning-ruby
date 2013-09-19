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

require 'open-uri'
require 'pp'

query_params = { 'apikey': 'API_KEY',
             'phrase': 'fiscal cliff' 
           }

endpoint = 'http://capitolwords.org/api/text.json'

response = open(endpoint, params=query_params)
data = response.json

pprint.pprint(data)