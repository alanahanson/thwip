require 'spec_helper'
require 'thwip/event'


describe Event do
  context 'events' do 
    let(:event) {Event.new({
      'id' => 24,
      'title' => 'Bad vs Evil',
      'description' => 'fighting!',
      'characters' => {'items' => [{'id' => 1, 'name' => 'Kickpuncher'}, {'id' => 2, 'name' => 'Manojack Everylegs'}]},
      'series' => {'items' => [{'id' => 5, 'name' => 'Team Up Adventure'}, {'id' => 32, 'name' => 'Good Guys'}]},
      'comics' => {'items' => [{'id' => 42, 'name' => 'World War Hunk'}, {'id' => 99, 'name' => 'Resurrection for Beginners'}, {'id' => 3, 'name' => 'What If Cell Phones But Bad'}]}
    })}
    
    it 'creates an event with a title' do
      expect(event.title).to eq 'Bad vs Evil'
    end

    it 'creates an event with a description' do
      expect(event.description).to eq 'fighting!'
    end

    it 'creates an event with an event id' do
      expect(event.event_id).to eq 24
    end

    it 'creates an array of comics for the event' do
      expect(event.comics).to match_array ['Resurrection for Beginners', 'What If Cell Phones But Bad', 'World War Hunk']
    end

    it 'creates an array of event-related series' do
      expect(event.series).to match_array ['Team Up Adventure', 'Good Guys']
    end

    it 'creates an array of characters in the event' do
      expect(event.characters).to match_array ['Kickpuncher', 'Manojack Everylegs']
    end
  end
end
