# Query for Digital Undivided Hackathon Dev Discount
# Original prompt at: http://www.digitalundivided.com/hacktest.html
# "Test": Hit http://www.digitalundivided.com/hack with the parameter of name, your name, get or post for the json object

require 'pp'

# 1)Type the query string in the url bar, kinda cheating:
  # http://www.digitalundivided.com/hack/?name=Daniel%20Friedman

# 2)With URI
  require 'open-uri'
  params = { 'name' => "Daniel Friedman"}
  uri = URI.parse("http://www.digitalundivided.com/hack")
  uri.query = URI.encode_www_form( params )
  puts uri.open.read

# 3)With Typhoeus, manually
  require 'typhoeus'
  endpoint = "http://www.digitalundivided.com/hack"
  request = Typhoeus::Request.new( endpoint, params: { name: "Daniel Friedman" }).run
  pp "\t#{request.response_body.to_s}"
  # => 301 to http://www.digitalundivided.com/hack/?name=Daniel%20Friedman
  # so:
  request2 = Typhoeus::Request.new( 'http://www.digitalundivided.com/hack/?name=Daniel%20Friedman').run
  puts request2.response_body

# 4)Typhoeus all-in-one, request-object-free
  require 'typhoeus'
  endpoint = "http://www.digitalundivided.com/hack"
  request = Typhoeus.get( endpoint, params: {name: "Daniel Friedman"}, followlocation: true)
  puts request.response_body

# 5)HTTParty
  require 'httparty'
  response = HTTParty.get("http://www.digitalundivided.com/hack", {:query => {:name=>"alex"}})
  puts response.parsed_response