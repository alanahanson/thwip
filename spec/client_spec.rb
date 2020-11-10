require 'json'
require 'spec_helper'
require 'thwip/client'
require 'thwip/event'

require 'webmock'

describe Client do
  context 'getting list of events' do 
    it 'returns events from API response body' do
    	body = JSON.generate({'data': {'results': [1,2,3]}})
    	stub_request(:any, /marvel.com/).to_return(status: [200, 'Ok'], body: body)

    	allow(Event).to receive(:new).and_return('hi!')
      events = Client.new.events
      expect(events).to eq ['hi!', 'hi!', 'hi!']
    end

    it 'handles bad request' do
    	stub_request(:any, /marvel.com/).to_return(status: [400, 'not ok!'])
      expect{ Client.new.events }.to raise_exception
    end
  end
end
