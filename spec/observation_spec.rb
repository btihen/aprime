require_relative '../observation'

describe Observation do

  it "obs.data is correct" do
    obs = Observation.new("y",0.65)
    obs.data.should == "y"
  end
  it "obs.model is correct" do
    obs = Observation.new("y",0.65)
    obs.model.should == 0.65
  end

end
