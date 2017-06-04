require 'net/http'


PRIVATE_KEY = ENV['MARVEL_PRIVATE_KEY']
PUBLIC_KEY = ENV['MARVEL_PUBLIC_KEY']
BASE_URL           = "https://gateway.marvel.com:443/v1/public/characters"
TIMESTAMP          = Time.now.to_i.to_s
URL_HASH           = Digest::MD5.hexdigest("#{TIMESTAMP}#{PRIVATE_KEY}#{PUBLIC_KEY}")
DEFAULT_PARAMS     = "apikey=#{PUBLIC_KEY}&ts=#{TIMESTAMP}&hash=#{URL_HASH}"

# p BASE_URL + '?' + DEFAULT_PARAMS

uri = URI('http://example.com/index.html')
params = { :limit => 10, :page => 3 }
uri.query = URI.encode_www_form(params)

res = Net::HTTP.get_response(uri)
puts res.body if res.is_a?(Net::HTTPSuccess)


class Client
  BASE_URL = "https://gateway.marvel.com:443/v1/public/"
  def initialize

  end

  def get_issue(id)
    # res = api_response
    Issue.new(res)
  end

  def get_series(id)
    # res = api_response
    Series.new(res)
  end
end
