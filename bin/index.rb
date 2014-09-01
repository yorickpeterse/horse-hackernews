require 'httpclient'
require 'json'
require 'sanitize'

if ARGV[0].empty?
  abort 'You need to specify one or more HackerNews post IDs'
end

ARGV.each do |id|
  item_url  = "https://hn.algolia.com/api/v1/items/#{id}"
  item_json = JSON.load(HTTPClient.get(item_url).body)
  corpus    = File.expand_path("../../corpus/#{id}.txt", __FILE__)

  File.open(corpus, 'w') do |handle|
    item_json['children'].each do |child|
      next unless child['text']

      text = Sanitize.fragment(child['text'].gsub('\n', ' ').strip)

      handle.write("#{text}\n\n") unless text.empty?
    end
  end
end
