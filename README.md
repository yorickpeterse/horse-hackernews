# Horse HackerNews

A set of quickly hacked together scripts for generating Markov chains based on
HackerNews comments.

## Requirements

* Ruby
* A list of HackerNews topic IDs

## Usage

Install all the required Gems:

    bundle install

Index a few posts:

    ruby bin/index.rb 7970366
    ruby bin/index.rb 7679431
    ruby bin/index.rb 8120070
    ruby bin/index.rb 7829042
    ruby bin/index.rb 7507765

Build the dictionary:

    ruby bin/dictionary.rb

Build a Markov chain:

    ruby bin/horse.rb
