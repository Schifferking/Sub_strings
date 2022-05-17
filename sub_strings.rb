def substrings(word, dictionary)
  #Split phrase in array and convert to lowercase
  words_list = word.split
  words_list.map! { |word| word.downcase }

  matches = []
  words_list.each do |word|
    # Get all substrings found based on the current word and store in an array
    matches.push(dictionary.select do |substring|
      substring if (word.include?(substring))
    end)
  end

  matches = matches.flatten

  # Create the hash of substrings as keys and count as values
  matches.reduce(Hash.new(0)) do |substrings_hash, substring|
    substrings_hash[substring] += 1
    substrings_hash
  end

end