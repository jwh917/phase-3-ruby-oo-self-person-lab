class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  # setter method
  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end


  def happiness=(value)
    @happiness = if value > 10
      10
    elsif value < 0 
      0
    else
      value
    end
  end
  

  def hygiene=(value)
    @hygiene = if value > 10
      10
    elsif value < 0 
      0
    else
      value
    end
  end


  def clean?
    self.hygiene > 7
  end

  def happy?
    self.happiness > 7
  end


  def get_paid(amount)
    self.bank_account = self.bank_account + amount
    return "all about the benjamins"
  end


  def take_bath
    self.hygiene = self.hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end


  def work_out
    self.happiness = self.happiness + 2
    self.hygiene = self.hygiene - 3
    return "♪ another one bites the dust ♫"
  end


  def call_friend(friend)
    self.happiness =  self.happiness + 3
    friend.happiness =  friend.happiness + 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end


  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness =  self.happiness - 2
      friend.happiness =  friend.happiness - 2
      "blah blah partisan blah lobbyist"

    elsif topic == "weather"
      self.happiness =  self.happiness + 1
      friend.happiness =  friend.happiness + 1
      "blah blah sun blah rain"
      
    else
      "blah blah blah blah blah"
    end
  end


end
