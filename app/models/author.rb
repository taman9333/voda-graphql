class Author < ApplicationRecord

  def full_name
    [first_name, last_name].compact.join ' '
  end

  def coordinates
    [rand(1000), rand(2000)]
  end

  def publication_years
    10.times.to_a.map { 1900 - rand(100)}
  end

  validates :last_name, presence: true
  validates :yob, presence: true

end
