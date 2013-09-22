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

query_params = { 'apikey' => 'API_KEY', 'phrase' => 'fiscal cliff' }

endpoint = 'http://capitolwords.org/api/1/text.json'

response = open(endpoint + '?phrase=fiscal+cliff' + "&apikey=______your-api-key-here______").read

data = JSON.parse(response)

pp data

# Note:
  # the codeacademy endpoint given in the lesson is: 'http://capitolwords.org/api/text.json'
  # the real root api is:  http://capitolwords.org/api/1/ , (official documentation there).
  # example query to the dates.json endpoint:  http://capitolwords.org/api/1/dates.json?apikey=<YOUR_KEY>


#########################################################################################
#########################################################################################

# Alternative, passing query as a hash

require 'uri'

endpoint = 'http://capitolwords.org/api/1/text.json'
query_params = { 'apikey' => 'XXXXXXXX', 'phrase' => 'fiscal cliff' }

# create a URI object from the endpoint
uri = URI.parse(endpoint)
  # creates a uri ruby object contailing the data from the parsed url
  #=> <URI::HTTP:0x007fd47b8482d8 URL:http://capitolwords.org/api/1/text.json>

# Add params to URI object, via query= method
uri.query = URI.encode_www_form( query_params ) # automatically adds the ? to start of query string
    # uri.query   # => "apikey=XXXXXXXX&phrase=fiscal+cliff"
    # uri, contains the query string  
    # => <URI::HTTP:0x007fd47b8482d8 URL:http://capitolwords.org/api/1/text.json?apikey=XXXXXXXX&phrase=fiscal+cliff>

# Note: so far, no actual request has been sent. The above is simple building the query string

# Then send the request and read the object with either net/http, open-uri, or a ton of other gems
# URI attributes become the URL and query string

require 'open-uri'

puts uri.open.read  # pp here returns the string, not the json object for some reason

# or
require 'net/http'

puts Net::HTTP.get(uri)

# Again Without Comments:
  
  endpoint = 'http://capitolwords.org/api/1/text.json'
  query_params = { 'apikey' => 'XXXXXXXX', 'phrase' => 'fiscal cliff' }
  uri = URI.parse(endpoint)
  uri.query = URI.encode_www_form( query_params )
  puts uri.open.read

#######################
# Look into: HTTPClient, maybe be great altenative to Typhoeus

# Alternative with Typhoeus

require 'typhoeus'

request = Typhoeus::Request.new( endpoint, params: query_params ).run

data = JSON.parse(request.response_body)

pp data