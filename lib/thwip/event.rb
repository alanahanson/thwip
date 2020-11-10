class Event
  attr_reader :title, :event_id, :description
  
  def initialize(event_data={})
  	@description = event_data['description']
  	@title = event_data['title']
  	@event_id = event_data['id']
  	@characters = event_data['characters'].fetch('items')
  	@series = event_data['series'].fetch('items')
  	@comics = event_data['comics'].fetch('items')
  end

  def characters
  	@characters.map { |char| char.fetch('name') }.compact
  end

  def comics
  	@comics.map { |comic| comic.fetch('name') }.compact
  end

  def series
  	@series.map { |s| s.fetch('name') }.compact
  end
end
