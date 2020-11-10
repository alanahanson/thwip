require 'dotenv/load'

require 'thwip/version'
require 'thwip/client'

module Thwip
	def self.get_events
		Client.new.events
	end
end
