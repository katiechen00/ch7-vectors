# Exercise 3: vector practice

# Create a vector `words` of 6 (or more) words.
# You can Google for a "random word generator" if you wish!
words <- c("salad", "food", "fish", "eat", "ball", "cat")

# Create a vector `words_of_the_day` that is your `words` vector with the string
# "is the word of the day!" pasted on to the end.
# BONUS: Surround the word in quotes (e.g., `'data' is the word of the day!`)
# Note that the results are more obviously correct with single quotes.
quote <- paste("'", words, "'", sep = "")
words_of_the_dat <- paste(quote, "is the word of the day!")

# Create a vector `a_f_words` which are the elements in `words` that start with 
# "a" through "f"
# Hint: use a comparison operator to see if the word comes before "f" alphabetically!
# Tip: make sure all the words are lower-case, and only consider the first letter
# of the word!
a_f_words <- words[substr(words, 1, 1) <= "f"]

# Create a vector `g_m_words` which are the elements in `words` that start with 
# "g" through "m"
g_m_words <- words[substr(words, 1, 1) <= "m" & substr(words, 1, 1) >= "g"]

# Define a function `word_bin` that takes in three arguments: a vector of words, 
# and two letters. The function should return a vector of words that go between 
# those letters alphabetically.
word_bin <- function(word, letter1, letter2) {
  return(word[word >= letter1 & substr(word, 1, 1) <= letter2])
}

# Use your `word_bin` function to determine which of your words start with "e" 
# through "q"
word_bin(words, "e", "q")
