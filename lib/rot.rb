class Rot
  def initialize(sentence)
    @sentence = sentence
  end

  def encrypt(key=0)
    coded = ""
    key_mod = key % 26
    @sentence.each_char do |letter|

      if (65..90).include? letter.ord
        coded_char = letter.ord + key_mod
        if coded_char > 90
          coded_char = coded_char % 90 + 64
        end
        coded +=  coded_char.chr
      elsif (97..122).include? letter.ord
        coded_char = letter.ord + key_mod
        if coded_char > 122
          coded_char = coded_char % 122 + 96
        end
        coded +=  coded_char.chr
      else
        coded += letter
      end
    end
    coded
  end
end
