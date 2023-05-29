class Character < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :show
  def actor 
   self.actor
  end
  def say_that_thing_you_say
    "#{self.actor.name} always says: #{self.catchphrase}"
  end
  def show
    self.show
  end
end