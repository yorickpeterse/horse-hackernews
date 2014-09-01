require 'marky_markov'

dict_path = File.expand_path('../../model/default', __FILE__)
dict      = MarkyMarkov::Dictionary.new(dict_path)

Dir[File.expand_path('../../corpus/*.txt', __FILE__)].each do |text_file|
  dict.parse_file(text_file)
end

dict.save_dictionary!
