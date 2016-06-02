class Paperboy
  attr_accessor :name, :quota, :exper, :side
  attr_reader :earn

  def initialize(name, quota, exper, side, earn)
    @name = name
    @quota = quota
    @exper = exper
    @side = side
    @earn = earn
  end

  #method for putting quota state
  def quota(paper_quota)
    "#{@name}\'s quota is #{@quota}"
  end

  def deliver(start_loc, end_loc)
    if start_loc < end_loc #flow control to make sure numbers increase
      total = end_loc - start_loc
      @earn = total * 0.25
      total = @earn.to_f
    else
      "Your starting number must be less than your ending number"
    end
  end

  def report

  end

end #ends class
