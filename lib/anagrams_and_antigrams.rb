#!/usr/bin/ruby


class Project
  def initialize(word1, word2)
    @word1_to_test = word1
    @word2_to_test = word2
  end

  def check_anagrams
    if @word1_to_test.chars.sort.join == @word2_to_test.chars.sort.join
      true
    else
      false
    end
  end

  def check_case
    @word1_to_test.downcase!
    @word2_to_test.downcase!
    if @word1_to_test.chars.sort.join == @word2_to_test.chars.sort.join
      true
    else
      false
    end
  end

  def compare_to_dictionary(wordpass)
    file = File.read('words.txt')
    line_num=0
    status = false
    file.gsub!(/\n/, "\s")
    file.split(" ").each do |word|
      if wordpass == word.downcase
        status = true
      end
    end
    status
  end

  def check_if_word
    count1 = @word1_to_test.downcase.count 'aeiouy'
    count2 = @word2_to_test.downcase.count 'aeiouy'
    if (count1 > 0) & (count2 >0) & (compare_to_dictionary(@word1_to_test.downcase) == true) & (compare_to_dictionary(@word2_to_test.downcase) == true)
      true
    else
      false
    end
  end

  def check_if_antigram_and_anagram
    if check_if_word == true
      if check_anagrams == false
        antigram = false
        @word1_to_test.downcase.split("").each do |character|
          reg = Regexp.new character
          if !!(@word2_to_test.downcase =~ reg)
            antigram = true
            puts "true"
          end
        end
        if antigram == true
          puts "These words have letter matches and are not antigrams"
        else
          puts "These words have no letter matches and are antigrams"
        end
        antigram
      else
        puts "this is an anagram"
        true
      end
    else
      puts "Please input real words"
    end
  end

  
end
