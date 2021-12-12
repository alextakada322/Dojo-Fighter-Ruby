# EXAMPLE: copy and paste this and try it out in your own terminal

puts "Do you want to |fight| or |run|?"

input = gets.chomp #chomp trims whitespace

if input == "fight"
    puts "you are fighting"
elsif input == "run"
    puts "you are running"
end

#####################################

# name
# => string : has getter no setter

# defense
# => number: has getter and setter

# strength
# => number : has getter and setter

# luck
# => number : has getter and setter

# life
# => number : has getter and setter

❗ *getters* are methods to get a value

❗ *setters* are methods to alter a value

# STEP 1 FIGHTER CLASS

Class Fighter
    attr_reader :name
    attr_accessor :defense, :strength, :luck, :life
    def initialize name, defense, strength, luck, life
        @name = name
        @defense = defense
        @strength = strength
        @luck = luck
        @life = life
    end
    def attack enemy
        damage = @strength - enemy.defense
        luck_chance = @luck
        if damage <= 0
            @life -= 1
            puts "#{name}'s attack failed. No damage to #{enemy.name}. #{name} losses 1 point to life for failed attack."
        else
            enemy.life = enemy.life - (damage + luck_chance)
            puts "#{name} attacked with #{damage} and now #{enemy.name} has a life value of #{enemy.life} since #{name} has lucky #{luck_chance} points adding to the damage."
        end
    end
end

# STEP 2 DOJO CLASS

# lift_weights(fighter)
# => takes in fighter and adds 1 to strength

# endurance_training(fighter)
# => takes in fighter and adds 1 to defense

# coin_in_fountain(fighter)
# => takes in fighter and adds 1 to strength

Class Dojo
    def self.lift_weights fighter
        fighter.strength += 1
        puts "Weight training increases strength to #{fighter.strength}."
    end
    def self.endurance_training fighter
        fighter.defense += 1
        puts "Endurance training increases defense to #{fighter.defense}."
    end
    def self.coin_in_fountain fighter
        fighter.luck += 1
        puts "Lucky coin in the fountain increases luck to #{fighter.luck}."
    end
end

def_number = rand(1..10)
strength_number = rand(1..10)
luck_number = rand(1..2)

# STEP 3

# welcome player to game and ask for their name
# =>  use `gets` to get players name in variable

puts "Welcome to Dojo Fighter, What is your |name|?"

player_name = gets.chomp
player_name == "name"
puts "Player's name: #{player_name}"

# create new fighter ```player = Fighter.new(name, 0,0,0, 10)```
# =>  all their stats start at 0 except life which is 10 *

player_name = Fighter.new "#{player_name}", 0, 0, 0, 10

# create their opponent ```Akuma = Fighter.new("Akuma", 4,4,4,10)```

Batman = Fighter.new "Batman", def_number, strength_number, luck_number, 10

# put a prompt telling the story and explaining the game

puts "#{player_name.name} and #{Batman.name} will fight to determine the winner after 10 weeks!"

# create a while look that will loop `10` times

i = 1
while i <= 10 

# => prompts will pause the loop and wait for the user to input a choice
    # in the while loop ask the player how they'd like to train that week
    # based on their choice invoke the right dojo function to train the player

    puts "How do you want to train for week #{i}? Enter: |weights|, |endurance|, or |luck|."
        choice = gets.chomp.upcase
        if choice == "WEIGHTS"
            Dojo.lift_weights(player_name)
        elsif choice == "ENDURANCE"
            Dojo.endurance_training(player_name)
        elsif choice == "LUCK"
            Dojo.coin_in_fountain(player_name)
        else
            puts "invalid, no net gain."
        end

        i += 1
    end
# after the previous while loop create prompt explaining the big battle has arrived
puts "FIGHT TIME"

# create an infinite loop
# have the player and their opponent take turns attacking each other

loop do 
    player_name.attack Batman
    if Batman.life <= 0
        puts "#{player_name.name} is the winner" 
        break
    end

    puts "Batman life value = #{Batman.life}"
    puts "#{player_name.name} life value = #{player_name.life}"
# at the end of each loop check the life of both fighters


    if player_name.life <= 0 
        puts "#{Batman.name} is the winner"
        break
    end

    puts "Batman life value = #{Batman.life}"
    puts "#{player_name.name} life value = #{player_name.life}"

# if one is at 0 or below, break the loop and declare the survivor the winner

    if player_name.life || Batman.life <= 0
        puts "#{player_name.name} is the winner"
    elsif 
        puts "#{Batman.name} is the winner"
    end
end