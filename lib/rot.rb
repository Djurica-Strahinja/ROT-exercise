class Rot
  def initialize(sentence)
    @sentence = sentence
    @coded = ""
  end


  def encrypt(key=0)
    charList = ("a".."z").to_a

    @sentence.each_char do |i|
      if i == " "
        @coded += " "
      else
        index = charList.find_index(i)
        newIndex = (index + key) % charList.length
        @coded += charList[newIndex]
      end
    end
    return  @coded
  end

  def decrypt(key=0)
    charList = ("a".."z").to_a
    decoded = ""

    if key == 0
      return @sentence
    else
      @sentence.each_char do |i|
        if i == " "
          decoded += " "
        else
          index = charList.find_index(i)
          newIndex = (index - key) % charList.length
          decoded += charList[newIndex]
        end
      end
      return  decoded
    end
  end
end
