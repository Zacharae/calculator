# Define a function to generate a random number using dice
roll_dice = () -> Math.floor(Math.random() * 6) + 1

# Define the calculator functions
add = (a, b) -> a + b
subtract = (a, b) -> a - b
multiply = (a, b) -> a * b
divide = (a, b) -> a / b

# Define the scientific calculator functions
square = (a) -> multiply(a, a)
cube = (a) -> multiply(multiply(a, a), a)
sqrt = (a) -> Math.sqrt(a)
sin = (a) -> Math.sin(a)
cos = (a) -> Math.cos(a)
tan = (a) -> Math.tan(a)

# Define the main calculator function
calculate = (operation, a, b) ->
  switch operation
    when "+"
      add(a, b)
    when "-"
      subtract(a, b)
    when "*"
      multiply(a, b)
    when "/"
      divide(a, b)
    when "square"
      square(a)
    when "cube"
      cube(a)
    when "sqrt"
      sqrt(a)
    when "sin"
      sin(a)
    when "cos"
      cos(a)
    when "tan"
      tan(a)
    else
      throw new Error("Invalid operation")

# Roll the dice to generate two random numbers
num1 = roll_dice()
num2 = roll_dice()

# Calculate the sum of the two numbers
sum = calculate("+", num1, num2)

# Output the result
console.log("The sum of #{num1} and #{num2} is #{sum}")
