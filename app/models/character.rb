class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(attr)
    Show.create do |x|
      x.name = attr[:name]
      x.day = attr[:day]
      x.season = attr[:season]
      x.genre = attr[:genre]
    end
  end
end
