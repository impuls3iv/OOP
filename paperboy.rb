#Create class called Paperboy.
#Everything here will apply to all Paperboys
class Paperboy

  attr_accessor :name, :quota, :experience, :side
  attr_reader :earnings

  # initializer CALL THIS METHOD FIRST
  def initialize(name, quota, experience, side, earnings)
    @name = name
    @quota = quota
    @experience = experience
    @side = side
    @earnings = earnings
  end

#CALL THIS METHOD THIRD
  def paperboy_quota
    quota = (@experience / 2) + 50
  end

#CALL THIS METHOD SECOND
  def paperboy_deliver(start_address, end_address)
    count_odd = 0
    count_even = 0
    number_of_houses = end_address - start_address
    #--choosing odd side
    if @side == "odd"

      for i in 1..number_of_houses
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
      for x in 1..number_of_houses
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

    #   ##The paperboy gets paid an extra .50 per paper OVER their quota
     if @counter > quota
       money += (0.50 * @counter - quota)
       puts "You made an extra 50 cents on #{@counter - quota} papers over your quota"
       ## If at the end of the day the paperboy hasn't met their quota, they lose $2
     elsif @counter < quota
       earnings - 2
       puts "Your earnings were decreased by 2 dollars"
     else
       "#{name}, you've met your quota!"
     end
    #  #End of if




  end #end paperboy_deliver method
#CALL THIS METHOD FOURTH
  def report
    if @side == "even"
      puts "Im #{name}, i delivered #{@counter} paper and earned #{@money.to_f}"
    else
      puts  "Im #{name}, i delivered #{@counter} paper and earned #{@money.to_f}"
    end
  end




end #end class
#sam = Paperboy.new('sam', 50, 0, "odd", 0)
