class Author < ApplicationRecord

  def full_name
    [first_name, last_name].compact.join ' '
  end

  def coordinates
    [rand(1000), rand(2000)]
  end

end
