class Observation
  attr_reader :data, :model
  def initialize(data, model)
    @data  = data.downcase
    @model = model
  end
end
