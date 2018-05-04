class Comedian < ActiveRecord::Base
  validates_presence_of :name, :age
  has_many :specials

  def self.average_age
    Comedian.average(:age)
  end

  def self.find_comedians_by_age(comedian_age)
    Comedian.where(age: comedian_age)
  end
end
