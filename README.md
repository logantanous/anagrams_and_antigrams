# Anagram and Antigrams

### Logan Tanous

#### February 9, 2018  

## Description
This program determines whether a pair of words are anagrams, antigrams or not at all

## Specs
One: This program will check if two words are anagrams
  Input: crap, carp
  Output: This is an anagram.

Two: This program will check if two words with different cases are anagrams
  Input: Crap, CARP
  Output: This is an anagram.

Three: This program will check if two the two input words are actual words by comparing to a dictionary
  Input: Crap, CARP
  Output: These are an anagram.

Four: This program will check if two words are antigrams
Input: craps, junk
Output: These are an antigram.

Five: This program will check if multiple words are antigrams, anagrams or not and removes punctuation
Input: I sdf drink carp tea and eat, sleep, crap
Output:
[I and drink: These words have letter matches and are not antigrams]
[I and carp: These words have no letter matches and are antigrams]
[I and tea: These words have no letter matches and are antigrams]
[I and and: These words have no letter matches and are antigrams]
[I and eat: These words have no letter matches and are antigrams]
[I and sleep: These words have no letter matches and are antigrams]
[I and crap: These words have no letter matches and are antigrams]
__
drink
[drink and I: These words have letter matches and are not antigrams]
[drink and carp: These words have letter matches and are not antigrams]
[drink and tea: These words have no letter matches and are antigrams]
[drink and and: These words have letter matches and are not antigrams]
[drink and eat: These words have no letter matches and are antigrams]
[drink and sleep: These words have no letter matches and are antigrams]
[drink and crap: These words have letter matches and are not antigrams]
__
carp
[carp and I: These words have no letter matches and are antigrams]
[carp and drink: These words have letter matches and are not antigrams]
[carp and tea: These words have letter matches and are not antigrams]
[carp and and: These words have letter matches and are not antigrams]
[carp and eat: These words have letter matches and are not antigrams]
[carp and sleep: These words have letter matches and are not antigrams]
[carp and crap: This is an anagram]
__
tea
[tea and I: These words have no letter matches and are antigrams]
[tea and drink: These words have no letter matches and are antigrams]
[tea and carp: These words have letter matches and are not antigrams]
[tea and and: These words have letter matches and are not antigrams]
[tea and eat: This is an anagram]
[tea and sleep: These words have letter matches and are not antigrams]
[tea and crap: These words have letter matches and are not antigrams]
__
and
[and and I: These words have no letter matches and are antigrams]
[and and drink: These words have letter matches and are not antigrams]
[and and carp: These words have letter matches and are not antigrams]
[and and tea: These words have letter matches and are not antigrams]
[and and eat: These words have letter matches and are not antigrams]
[and and sleep: These words have no letter matches and are antigrams]
[and and crap: These words have letter matches and are not antigrams]
__
eat
[eat and I: These words have no letter matches and are antigrams]
[eat and drink: These words have no letter matches and are antigrams]
[eat and carp: These words have letter matches and are not antigrams]
[eat and tea: This is an anagram]
[eat and and: These words have letter matches and are not antigrams]
[eat and sleep: These words have letter matches and are not antigrams]
[eat and crap: These words have letter matches and are not antigrams]
__
sleep
[sleep and I: These words have no letter matches and are antigrams]
[sleep and drink: These words have no letter matches and are antigrams]
[sleep and carp: These words have letter matches and are not antigrams]
[sleep and tea: These words have letter matches and are not antigrams]
[sleep and and: These words have no letter matches and are antigrams]
[sleep and eat: These words have letter matches and are not antigrams]
[sleep and crap: These words have letter matches and are not antigrams]
__
crap
[crap and I: These words have no letter matches and are antigrams]
[crap and drink: These words have letter matches and are not antigrams]
[crap and carp: This is an anagram]
[crap and tea: These words have letter matches and are not antigrams]
[crap and and: These words have letter matches and are not antigrams]
[crap and eat: These words have letter matches and are not antigrams]
[crap and sleep: These words have letter matches and are not antigrams]

## Built With

* Ruby

## Authors

**Logan Tanous**

## License

Licensed under the MIT License.

<!-- ## Acknowledgments -->

Copyright (c) 2018 **_Logan Tanous_**
