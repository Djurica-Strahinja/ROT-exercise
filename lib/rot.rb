#!/usr/bin/env ruby

class Rot
  def initialize(sentence)
    @sentence = sentence
  end

  def encrypt(key=0)
    coded = ""
    key_mod = key % 25
    @sentence.each_char do |letter|
      if (65..90).include? letter.ord
        new = (letter.ord + key_mod)
        if new > 90
        new = new % 90 + 65
        end
        coded +=  new.chr

      elsif (97..122).include? letter.ord
        new = (letter.ord + key_mod)
        if new > 122
        new = new % 122 + 97
        end
        coded +=  new.chr
        
      else
        coded += letter
      end
    end
    coded
  end
end
