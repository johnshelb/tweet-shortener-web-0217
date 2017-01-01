require 'pry'
def conversion_dictionary
  dictionary = {
    "hello"=>'hi',
    "to" => '2',
    "two"=>'2',
    "too" => '2',
    "for"=>'4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&"
  }
end

def word_substituter(tweet)
  dictionary = conversion_dictionary
  tweet_as_array = tweet.split(" ")
  array_of_keys = conversion_dictionary.keys
  new_array = []
  tweet_as_array.each do |word|
    if array_of_keys.include?(word.downcase)
      new_array<< dictionary[word.downcase]
    else
      new_array << word
    end
  end
  reformed_tweet = new_array.join(" ")
reformed_tweet
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
       word_substituter(tweet)
    else
       tweet
    end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    tweet[0..136] + "..."
  else
    word_substituter(tweet)
  end
end
