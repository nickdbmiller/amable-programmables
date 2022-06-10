# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

def substrings(str, word_list)
  # Make a new hash with default value of zero
  answer = Hash.new(0)

  # All chars need to be lowercase to match successfully
  lower = str.downcase

  word_list.each do | word |
    answer[word] = lower.scan(word).length unless lower.scan(word).length == 0
  end
  answer
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

if substrings("below", dictionary) == { "below" => 1, "low" => 1 }
  p substrings("below", dictionary)
  puts "Test #1 passes!"
else
  p substrings("below", dictionary)
  puts "Test #1 fails."
end

if substrings("Howdy partner, sit down! How's it going?", dictionary) == { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
  p substrings("Howdy partner, sit down! How's it going?", dictionary)
  puts "Test #2 passes!"
else
  p substrings("Howdy partner, sit down! How's it going?", dictionary)
  puts "Test #2 fails."
end