class Issue
  belongs_to :series
  attr_reader :title, :writer, :artist, :publication_date, :series_id, :issue_id
  def initialize(data)
  end
end
