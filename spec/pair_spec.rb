require_relative '../pair'

describe Pair do
  before do
    @y_obs = Observation.new("y", 0.65)
    @n_obs = Observation.new("n", 0.45)
    @pair  = Pair.new(@y_obs, @n_obs)
  end
  it "should retain y_obs" do
    @pair.y_obs.should == @y_obs
  end
  it "should give access to y_obs data" do
    @pair.y_obs.data.should == "y"
  end
  it "should give access to y_obs model" do
    @pair.y_obs.model.should == 0.65
  end
  it "should retain n_obs" do
    @pair.n_obs.should == @n_obs
  end
  it "should give access to n_obs data" do
    @pair.n_obs.data.should == "n"
  end
  it "should give access to n_obs model" do
    @pair.n_obs.model.should == 0.45
  end
end
