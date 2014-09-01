require 'marky_markov'

dict_path = File.expand_path('../../model/default', __FILE__)
dict      = MarkyMarkov::Dictionary.new(dict_path)

puts dict.generate_1_sentences
