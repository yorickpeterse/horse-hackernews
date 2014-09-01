require 'httpclient'
require 'json'
require 'nokogiri'

if !ARGV[0]
  abort 'Specify the ID of the HackerNews post'
end

id        = ARGV[0]
item_url  = "https://hn.algolia.com/api/v1/items/#{id}"
item_json = JSON.load(HTTPClient.get(item_url).body)
corpus    = File.expand_path("../../corpus/#{id}.txt", __FILE__)

File.open(corpus, 'w') do |handle|
  item_json['children'].each do |child|
    next unless child['text']

    text = Nokogiri::HTML(child['text'].gsub('\n', ' ')).text.strip

    handle.write("#{text}\n\n") unless text.empty?
  end
end
