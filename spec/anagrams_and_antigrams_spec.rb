require('rspec')
require('anagrams_and_antigrams')

describe('#Project') do
  it("checks if two words are anagrams") do
    expect(project = Project.new("crap", "carp", "").check_anagrams).to(eq(true))
  end
  it("checks if two words with different cases are anagrams") do
    expect(project = Project.new("Crap", "CARP", "").check_case).to(eq(true))
  end
  it("checks if two words are both words") do
    expect(project = Project.new("Crap", "CARP", "").check_if_word).to(eq(true))
  end
  it("checks if two words are anitgrams \(a word where no letters match\)") do
    expect(project = Project.new("craps", "junk", "").check_if_antigram_and_anagram).to(eq("These words have no letter matches and are antigrams"))
  end
  #worst prompt ever so I have no idea if this is what we are supposed to do \/
  it("checks if multiple words are antigrams or anagrams and are words") do
    expect(project = Project.new("", "", "I sdf drink carp tea and eat, sleep, crap.").check_sentence_for_words_question_mark).to(eq(true))
  end
end
