#dictionary of tweet substitutes
def dictionary
  words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

#replaces long words with their expected short form using the dictionary of tweet substitutes
#def word_substituter(tweet_string)
 # final_tweets = []
  #dictionary_array = dictionary.keys
  #tweet_array = tweet_string.split(" ")
  #tweet_array.each do |word|
   # dictionary_array.include?(word) ? final_tweets << dictionary[word] : final_tweets << word
#end
 # final_tweets.join(" ")
#end

def word_substituter(tweet_string)
  tweet_array = tweet_string.split(" ")
  dictionary.keys.each do |word|
    tweet_array.map! { |w| w.downcase == word ? dictionary[word] : w }
  end
  tweet_array.join(" ")
end



#shortens each tweet and prints the result 
def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

#shortens tweets that are more than 140 characters
#does not shorten tweets that are less than 130 characters
def selective_tweet_shortener
  
end

#truncates tweets over 140 characters after shortening
def shortened_tweet_truncator
  
end
