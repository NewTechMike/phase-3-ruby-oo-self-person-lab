require 'pry'
# your code goes here
class Person
  # Has abilities to:
  # Get paid
  # Take a bath
  # Call a friend 
  # Start a conversation
  # State if they are happy and/or clean
  attr_reader :name
  attr_accessor :bank_account

  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(value)
    if value > 10
      @happiness = 10
    elsif value < 0
      @happiness = 0
    else
      @happiness = value
    end 
  end 
  
  def happiness
    @happiness
  end

  def hygiene=(value)
    if value > 10
      @hygiene = 10
    elsif value < 0
      @hygiene = 0
    else
      @hygiene = value
    end 
  end 
  
  def hygiene
    @hygiene
  end 

  def happy?
    if @happiness > 7
      true
    else 
      false
    end 
  end 

  def clean?
    if @hygiene > 7
      true
    else 
      false
    end 
  end 

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene=(@hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end 

  def work_out
    @happiness += 2
    self.happiness =(@happiness)
    @hygiene -=3
    self.hygiene=(@hygiene)
    "♪ another one bites the dust ♫"
  end 

  def call_friend(friend)
    @happiness += 3
    self.happiness =(@happiness)
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end 

  def start_conversation(friend, topic) 
    if (topic == "politics") 
      @happiness -= 2
      self.happiness =(@happiness)
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif (topic == "weather") 
      @happiness += 1
      self.happiness =(@happiness)
      friend.happiness += 1
      "blah blah sun blah rain"
    elsif (topic != "politics" || topic != "weather")
      "blah blah blah blah blah"
    end 
  end 

end # End of Person class
