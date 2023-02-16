# Task write a caesar cipher that takes a string and shift factor and returns an encrypted version of that string
class CaesarCipher

 def shift_lower_case(letter, shift_factor)
    # write your code here
     alphabet = ("a".."z").to_a
     index_of_my_letter = alphabet.index(letter) # => 0
     alphabet.rotate(shift_factor).at(index_of_my_letter)
     
  
     shifted_letter
  end
  
  def shift_upper_case(letter, shift_factor)
    alphabet = ("A".."Z").to_a
    index_of_my_letter = alphabet.index(letter) # => nil
    shifted_letter = alphabet[index_of_my_letter + shift_factor]
    
    shifted_letter
  end
  
  def caesar_cipher(string, shift_factor)
    encrypted_string = ""
    string.each_char do |character|
      if !is_a_letter?(character) # a space or punctuation of some kind?
        encrypted_string << character
      elsif lower_case?(character) 
        encrypted_string << shift_lower_case(character, shift_factor)
      else
        encrypted_string << shift_upper_case(character, shift_factor)
      end
    end


  encrypted_string
  # break the string up into individual characters #check
  # if the character is not an alphabet character, just pass it into the encrypted string #check
  # for each character, if it's lower case, use shift_lower_case. otherwise use shift_upper_case 
  # return the shifted letters as a string
end

def is_a_letter?(character)
  ("a".."Z").to_a.include?(character)
end

def lower_case?(character)
  ("a".."z").to_a.include?(character)
end
# Examples
caesar_cipher("a", 1) == "b"
caesar_cipher("abc", 1) == "bcd"
caesar_cipher("What a string!", 5) == "Bmfy f xywnsl!"


# parameters: the names listed in a function definition
# arguments: the real-life values that are passed to a defined function
# arity: the number of parameters a function takes
# binding: when you assign a value to a variable
# coerce: turn a value into another type. Like turning a number 123 into a string "123"
# square-bracket notation: when you stick [] on the end of a variable that holds an array or hash. 
#   The thing inside the [] denotes what you want out of your data structure.

# REPL: read-eval-print-loop

#Recreate project as class named CaesarCipher


#take the code we wrote together in bummer.rb and recreate it as a class called CaesarCipher . I want to be able to use it like this:

cipher = CaesarCipher.new(4) # the number I pass in is the shift factor that I want this instance of CaesarCipher to use
cipher.encrypt("Hello, World!") # this method should return a string thats shifted by 4
cipher.set_shift_factor(5) # this changes the shift factor to 5
cipher.encrypt("Hello, World!") # this method should not return a string that's shifted by 5 instead

