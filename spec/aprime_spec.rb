require_relative '../aprime'

describe APrime do
  before do
    @data = []
    @data.push(@obs1 = Observation.new("y", 0.55))
    @data.push(@obs2 = Observation.new("n", 0.45))
    @data.push(@obs3 = Observation.new("y", 0.75))
    @data.push(@obs4 = Observation.new("n", 0.65))
    @data.push(@obs5 = Observation.new("n", 0.55))
    @data.push(@obs6 = Observation.new("y", 0.95))
    @true  = [@obs1, @obs3, @obs6]
    @false = [@obs2, @obs4, @obs5]
    @pair_count = @true.length*@false.length
    @aprime = APrime.new( @data )
  end
  it "should have it's data_set" do
    @aprime.data_set.should == @data
  end
  it "should create a true data set" do
    @aprime.true_set.should == @true
  end
  it "should create a false data set" do
    @aprime.false_set.should == @false
  end
  it "should count the correct number of pairs" do
    @aprime.count_pairs.should == @pair_count
  end
  it "should calculate True Positives correctly" do
    @aprime.true_pos.should == 7.5
  end
  it "should calculate A-Prime correctly" do
    @aprime.aprime.should == 7.5/ @pair_count
  end
end
