require 'digest'
require 'httparty'
require 'json'
require 'thwip/event'


class Client
  def initialize
    ts = Time.now.to_i.to_s
    md5 = Digest::MD5.hexdigest("#{ts}#{ENV['PRIVATE_KEY']}#{ENV['PUBLIC_KEY']}")
    @default_params = "?apikey=#{ENV['PUBLIC_KEY']}&ts=#{ts}&hash=#{md5}"
  end

  def events(options={})
    url = "#{ENV['BASE_URL']}/events#{@default_params}"
    response = HTTParty.get(url)
    events = JSON.parse(response.body).fetch('data').fetch('results')
    events.map { |e| Event.new(e) }
  end

end
