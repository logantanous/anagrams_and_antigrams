require('rspec')
require('anagrams_and_antigrams')

describe('#Project') do
  it("checks if two words are anagrams") do
    expect(project = Project.new("crap", "carp").check_anagrams).to(eq(true))
  end
  it("checks if two words with different cases are anagrams") do
    expect(project = Project.new("Crap", "CARP").check_case).to(eq(true))
  end
  it("checks if two words are both words") do
    expect(project = Project.new("Crap", "CARP").check_if_word).to(eq(true))
  end
  it("checks if two words are anitgrams \(a word where no letters match\)") do
    expect(project = Project.new("crap", "carp").check_if_antigram).to(eq(false))
  end
end
