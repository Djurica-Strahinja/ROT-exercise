#!/usr/bin/env ruby

class Rot
  def initialize(sentence)
    @sentence = sentence

  end


  def encrypt(key=0)
    charListSmall = ("a".."z").to_a
    charListCapitalize = ("A".."Z").to_a
    coded = ""

    @sentence.each_char do |i|
      if [" ", ",", ".", ":","!", "?"].include? i
        coded += i
      elsif
        index = charListSmall.find_index(i)
        newIndex = (index + key) % charListSmall.length
        coded += charListSmall[newIndex]
      else
        index = charListCapitalize.find_index(i)
        newIndex = (index + key) % charListCapitalize.length
        coded += charListCapitalize[newIndex]
      end
    end
    coded
  end
end
