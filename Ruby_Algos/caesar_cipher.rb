# Take a string and a number and shifts the characters in the string by n places in the alphabet.

def cipher(str, n)
  # Makes arrays of lower and uppercase alphabet.
  alpha = ("a".."z").to_a
  alpha_upcase = ("A".."Z").to_a

  # Maps through split array of string.
  mapped = str.split("").map do |char|

    # Checks lowercase inclusion
    if alpha.include?(char)

      # If n would put the index beyond the end of the 26 character array, go back to index zero.
      if (alpha.index(char) + n) > (alpha.length - 1)
        char = alpha[(alpha.index(char) + n) - 26]
      else
        char = alpha[alpha.index(char) + n]
      end

    # Checks uppercase inclusion
    elsif alpha_upcase.include?(char)

      # If n would put the index beyond the end of the 26 character array, go back to index zero.
      if (alpha_upcase.index(char) + n) > (alpha_upcase.length - 1)
        char = alpha_upcase[(alpha_upcase.index(char) + n) - 26]
      else
        char = alpha_upcase[alpha_upcase.index(char) + n]
      end
    
    # If non alphabetical character, leave it
    else
      char
    end
  end

  p mapped.join("")

  # Joins new array and returns
  mapped.join("")
end

if cipher("What a string!", 5) == "Bmfy f xywnsl!"
  puts "Test passed!"
else
  puts "Test failed."
end
