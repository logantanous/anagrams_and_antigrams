#!/usr/bin/ruby


class Project
  def initialize(word1, word2, sentence)
    @word1_to_test = word1
    @word2_to_test = word2
    @sentence_to_test = sentence
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

  def check_if_antigram
    if check_anagrams == false
      antigram = false
      @word1_to_test.downcase.split("").each do |character|
        reg = Regexp.new character
        if !!(@word2_to_test.downcase =~ reg)
          antigram = true
          "This is an antigram"
        end
      end
      if antigram == true
        "These words have letter matches and are not antigrams"
      else
        "These words have no letter matches and are antigrams"
      end
    else
      "This is an anagram"
    end
  end

  def check_if_antigram_and_anagram
    if check_if_word == true
      check_if_antigram
    else
      puts "Please input real words"
    end
  end

  #Prompt #5 makes no sense to me so I'm going to check a sentence and compare the words inside to each other
  def check_sentence_for_words_question_mark
    sentence_to_fix = @sentence_to_test
    sentence_to_fix = sentence_to_fix.gsub(/\W/, ' ')
    sentence_to_fix = sentence_to_fix.gsub(/\s\s/, ' ')
    word_hash = { }
    anagram_hash = { }

    sentence_to_fix.split(" ").each do |word|
      if word_hash["#{word}"] == nil
        count = word.downcase.count 'aeiouy'
        if (count > 0) & (compare_to_dictionary(word.downcase) == true)
          word_hash["#{word}"] = "word"
        else
          word_hash["#{word}"] = "not a word"
        end
      end
    end
    word_hash.each do |key, value|
      if value == "word"
        puts key
        word_hash.each do |keyothers, valueothers|
          if value == "word"
            if key != keyothers
              @word1_to_test = key
              @word2_to_test = keyothers
              if check_if_word == true
                puts "\[#{@word1_to_test} and #{@word2_to_test}: #{check_if_antigram}\]"
              end
            end
          end
        end
        puts "__"
      end
    end
    true
  end

end
