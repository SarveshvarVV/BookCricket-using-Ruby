require 'io/console'
def continue_story
  print "\npress any key"
  STDIN.getch
  print "            \r"
end

class Team
  def initialize
    @ar = ["w",1,2,3,4,6]
    @member = 6
    @runs = 0
    @wik = 0
    @sum = 0
  end
  def play
    6.times do
      continue_story
      i = rand(0..6)
      puts "\n\n*** The page number is #{i} ***"
      case i
      when 0
        puts "Wicket"
        @wik = @wik + 1
      when 1
        @runs = 1
      when 2
        @runs = 2
      when 3
        @runs = 3
      when 4
        @runs = 4
      when 5
        @runs = 6
      end
      unless i==0
        puts "You Scored... ~ #{@ar[i]} ~"
        @sum = @sum + @runs
      else
        puts "You Scored... ~ Wicket ~"
      end
      puts "Runs: #{@sum} || Wickets: #{@wik}"
    end
    @member = @member - @wik
  end
  def display
    puts "\nYour Final score is Runs: #{@sum} || Wickets: #{@wik} || Members left: #{@member}"
  end
  def target
    puts "Target: #{@sum+1}"
  end
  def result
    return @sum
  end
end
def check (p1res,p2res)
  if p1res > p2res
    puts "\n\n#########- Player 1 WINS -#########\n\n"
  else
    puts "\n\n#########- Player 2 WINS -#########\n\n"
  end
end

p1 = Team.new
puts "\n\t\t\t Welcome to BookCricket\n"
puts "This game is simple!"
puts "\t=> There are two players in this game with each player having a team of 6 players.\n\t=> The game is of 1 over (6 balls)."
puts "\t=> The players take their turns playing the game and scoring as much runs as they can and try to beat each other out."
puts "\nPlayer 1 is playing!"
p1.play
p1.display
p1.target
p1res = p1.result
p2 = Team.new
puts "\nPlayer 2 is playing!"
p2.play
p2.display
p2res = p2.result
check(p1res,p2res)
