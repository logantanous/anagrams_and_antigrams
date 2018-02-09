#!/usr/bin/ruby

class Project
  def initialize(word1, word2)
    @word1_to_test = word1
    @word2_to_test = word2
  end

  def check_anagrams
    puts @word1_to_test
    puts @word2_to_test
    true
  end

end

project = Project.new("ruby", "bury")
project.check_anagrams
