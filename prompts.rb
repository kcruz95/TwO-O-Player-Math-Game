class Prompts 

  attr_accessor :sum

  def initialize(name)
    @num1 = rand(1..20)
    @num2 = rand(1..20)

    # @prompt = rand(@sum, @difference, @result)
    @sum = @num1 + @num2
    # @difference = @num1 - @num2
    # @result = @num1 * @num2
    puts "#{name}: What does #{@num1} plus #{@num2} equal?"
    # puts "#{name}: What does #{@num1} minus #{@num2} equal?"
    # puts "#{name}: What does #{@num1} times #{@num2} equal?"
  end
end