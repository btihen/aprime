require_relative 'pair'

class APrime
  attr_reader :data_set, :true_set, :false_set, :pair_set, :count_pairs, :true_pos, :aprime
  def initialize(data_set)
    @data_set  = data_set
    @true_set  = split_set(@data_set,"y")
    @false_set = split_set(@data_set, "n")
    @pair_set  = make_pairs(@true_set, @false_set)
    @count_pairs = @pair_set.length
    @true_pos = count_good_model_pairs
    #puts @true_pos
    #puts @count_pairs
    #puts @true_pos / @count_pairs
    @aprime = @true_pos / @count_pairs
  end
  def split_set(data_set, match)
    sub_set  = []
    data_set.each do |obs|
      sub_set << obs if obs.data == match
    end
    return sub_set
  end
  def make_pairs(set1, set2)
    pairs = []
    set1.each do |s1|
      set2.each do |s2|
        pairs << Pair.new(s1, s2)
      end
    end
    return pairs
  end
  def count_good_model_pairs
    count = 0.0
    @pair_set.each do |p|
      count += 1.0 if p.y_obs.model > p.n_obs.model
      count += 0.5 if p.y_obs.model == p.n_obs.model
    end
    return count
  end
end
