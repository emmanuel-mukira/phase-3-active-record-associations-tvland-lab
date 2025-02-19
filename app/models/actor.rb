class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows , through: :characters
  def characters 
   self.characters
  end
  def shows 
   self.shows
  end
  def full_name
  " #{self.first_name}  #{self.last_name}"
  end
  def list_roles
    self.characters.map { |character| "#{character.name} - #{character.show.name}" }
  end
end