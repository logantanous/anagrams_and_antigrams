require('rspec')
require('anagrams_and_antigrams')

describe('#Project') do
  it("checks if two words are anagrams") do
    project = Project.new()
    project.check_anagrams
  end
end
