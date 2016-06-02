#Create class called Paperboy.
#Everything here will apply to all Paperboys
class Paperboy

  attr_accessor :name, :quota, :experience, :side
  attr_reader :earnings

  # initializer
  def initialize(name, quota, experience, side, earnings)
    @name = name
    @quota = quota
    @experience = experience
    @side = side
    @earnings = earnings
  end

  def paperboy_quota
    quota = (@experience / 2) + 50
  end

  def paperboy_deliver(start_address, end_address)
    count_odd = 0
    count_even = 0
    total_address = end_address - start_address
    #--choosing odd side
    if @side == "odd"

      for i in 0..total_address
       if i.to_i % 2 != 0
         count_odd += 1
       end
       end
       puts "you delivered to #{count_odd} houses"
       money = count_odd * 0.25
       @money = money
       puts "you earned #{money.to_f}"
       @experience += count_odd
       @counter = count_odd
       puts "your XP is #{@experience}"
     end

      #--------------------


    # -- choosing even side
    if @side == "even"
      for x in 0..total_address
       if x.to_i % 2 == 0
         count_even += 1
       end
      end
      puts "you delivered to #{count_even} houses"
      money = count_even * 0.25
      @money = money
      puts "you earned #{money.to_f}"
      @experience += count_even
      @counter = count_even
      puts "your XP is #{@experience}"
     end


     #--------end even side


  end #end paperboy_deliver method

  def report
    if @side == "even"
      puts "Im #{name}, i delivered #{@counter} paper and earned #{@money.to_f}"
    else
      puts  "Im #{name}, i delivered #{@counter} paper and earned #{@money.to_f}"
    end
  end

  # def paperboy_report
  #
  # end


end #end class
#sam = Paperboy.new('sam', 50, 0, "odd", 0)
