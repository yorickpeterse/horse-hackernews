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

## Training

Due to 95% of HackerNews comments consisting purely out of buzzwords the end
markov chains might be a bit too cryptic. For better results one should mix in
non HackerNews (or otherwise more varied) text. Examples could be Pride &
Prejudice, The Declaration of Independence, YouTube comments and more. The
dictionary script simply scans over all `.txt` files in the `corpus/` directory
so you can save whatever you want.
