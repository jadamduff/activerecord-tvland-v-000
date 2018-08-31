class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_network(attr = {})
    Network.create do |x|
      x.call_letters = "Fox"
    end
  end
end
