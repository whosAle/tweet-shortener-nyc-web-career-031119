# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  dictionary["to"], dictionary['two'], dictionary["too"] = "2", "2", "2"
  dictionary["for"], dictionary["four"] = "4", "4"

  dictionary
end

def word_substituter(tweet)
  dict = dictionary
  keys = dict.keys
  # puts keys
  tweet = tweet.split
  tweet.collect { |word| keys.include?(word.downcase) ? word = dict[word.downcase] : word }.join(" ")

end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
    if tweet.length > 140
      tweet = tweet[0..136]+"..."
    else
      tweet
    end
  else
    tweet
  end
end
