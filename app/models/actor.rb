class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    roles = []
    self.characters.first.each do |x|
      roles << "#{x.name} - #{x.show}"
    end
  end
end
