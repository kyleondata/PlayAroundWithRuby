# Class definition
class EzMath
  # This is a public property
  # Ruby has some magic here that
  # allows for getters and setters
  # to become "implied"
  attr_accessor :value

  # Add an integer value to the property
  def Add(val)
    self.value += val
  end
  
  # Subtract an integer value to the property
  def Subtract(val)
    self.value -= val
  end
  
  # Multiply an integer value to the property
  def Multiply(val)
    self.value *= val
  end
  
  # Divide an integer value to the property
  def Divide(val)
    self.value /= val
  end
  
  # Show the current value
  def ShowCurrentValue()
      # Print out the new value
      puts 'The amount now is ' + self.value.to_s
  end
end

if __file__ = $0
  # Initialize the EzMath Class
  math = EzMath.new
  # Display a prompt for the inital value
  # Print is used here instead of puts so that
  # input cursor is on the same line
  print 'What is the initial value? '
  # Get the input from the user
  val = gets
  # Set the property value with the amount the user entered
  math.value = val.to_i
  # Now its time to start doing some math
  # Prompt the user for an amount to add 
  # Enter 0 or press enter to add nothing
  print 'How much would you like to add? '
  # Get the input from the user
  addVal = gets
  # Invoke the add function
  math.Add(addVal.to_i)
  # Invoke the show current value function
  math.ShowCurrentValue
  # Time to see if the user wants to subtract
  print 'How much would you like to subtract? '
  # Get the value
  subtractVal = gets
  # Invoke the subtract funciton
  math.Subtract(subtractVal.to_i)
  # Invoke the show current value function
  math.ShowCurrentValue
  # Would you like to multiply
  print 'How much would you like to multiply by? '
  # Get the input
  multiVal = gets
  # Invoke the multiply function
  math.Multiply(multiVal.to_i)
  # Invoke the show current value function
  math.ShowCurrentValue
  # Would the user like to divide the amount
  print 'How much would you like to divide by? '
  # Get the input
  divideVal = gets
  # Invoke the divide function
  math.Divide(divideVal.to_i)
  # Invoke the show current value function
  math.ShowCurrentValue
end 