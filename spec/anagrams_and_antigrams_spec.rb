require('rspec')
require('anagrams_and_antigrams')

describe('#Project') do
  it("checks if two words are anagrams") do
    expect(project = Project.new("crap", "carp").check_anagrams).to(eq(true))
  end
  it("checks if two words with different cases are anagrams") do
    expect(project = Project.new("Crap", "CARP").check_anagrams).to(eq(true))
  end
end
