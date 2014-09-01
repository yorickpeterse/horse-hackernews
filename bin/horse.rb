require 'marky_markov'

dict_path = File.expand_path('../../model/default', __FILE__)
dict      = MarkyMarkov::Dictionary.new(dict_path)
amount    = ARGV[0] ? ARGV[0].to_i : 1

amount.times do
  puts dict.generate_1_sentences
end
