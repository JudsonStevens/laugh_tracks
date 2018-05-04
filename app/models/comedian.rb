class Comedian < ActiveRecord::Base
  validates_presence_of :name, :age
  has_many :specials

  def self.average_age
    Comedian.average(:age)
  end
end
