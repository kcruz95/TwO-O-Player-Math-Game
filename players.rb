class Player

  # defining getters
  attr_reader :name #:score

  # defining setters
  #attr_writer :score

  # both getter && setter (:score becomes irrelevant)
  attr_accessor :lives

  def initialize(name, lives = 3)
    @name = name
    @lives = 3
  end

  def takes_a_hit
    @lives = @lives - 1
  end

  # defining getters (long hand of ln 3-4)
  # def score
  #   @score
  # end

  # defining setters (long hand of ln 5-6)
  # def score=(points)
  #   @score = points
  # end

end
