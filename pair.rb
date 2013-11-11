require_relative 'observation'

class Pair
  attr_reader :y_obs, :n_obs
  def initialize (y_obs, n_obs)
    @y_obs = y_obs
    @n_obs = n_obs
  end
end
