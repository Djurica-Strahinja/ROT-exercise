require "rot"

#encrypt func

describe Rot do
  describe ".encrypt" do
  context "run without argument" do
    it "returns unchanged sentence" do
      sample = Rot.new("abc")
      expect(sample.encrypt()).to eql("abc")
      end
    end
  end

  context "run with key: 1" do
    it "returns shifted by one" do
      sample = Rot.new("abc")
      expect(sample.encrypt(1)).to eql("bcd")
      end
    end

    context "run with key: 2" do
      it "returns shifted by two" do
        sample = Rot.new("abc")
        expect(sample.encrypt(2)).to eql("cde")
        end
      end



  context "run with 2 words and key: 1" do
    it "returns shifted words separated by space, characters shifted by one" do
      sample = Rot.new("abc abc")
      expect(sample.encrypt(1)).to eql("bcd bcd")
      end
    end



  context "run with key: 27" do
    it "returns words shifted by key: 1'" do
      sample = Rot.new("abc abc")
      expect(sample.encrypt(27)).to eql("bcd bcd")
      end
    end

  context "run with key: 5, word 'trl'" do
    it "returns word shifted by key: 5, and get 'omg'" do
      sample = Rot.new("omg")
      expect(sample.encrypt(5)).to eql("trl")
      end
    end

  context "run with key: 0, word 'c'" do
    it "returns word shifted by key: 0, and get 'c'" do
      sample = Rot.new("c")
      expect(sample.encrypt(0)).to eql("c")
      end
    end

  context "run with key: 26, words 'Cool'" do
    it "returns word shifted by key: 26, and get 'Cool'" do
      sample = Rot.new("Cool")
      expect(sample.encrypt(26)).to eql("Cool")
      end
    end

  context "run with key: 13, sentence 'The quick brown fox jumps over the lazy dog.'" do
    it "returns word shifted by key: 13, and get 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.'" do
      sample = Rot.new("The quick brown fox jumps over the lazy dog.")
      expect(sample.encrypt(13)).to eql("Gur dhvpx oebja sbk whzcf bire gur ynml qbt.")
      end
    end

  context "run with key: 13, sentence 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.'" do
    it "returns word shifted by key: 13, and get 'The quick brown fox jumps over the lazy dog.'" do
      sample = Rot.new("Gur dhvpx oebja sbk whzcf bire gur ynml qbt.")
      expect(sample.encrypt(13)).to eql("The quick brown fox jumps over the lazy dog.")
      end
    end




#decrypt func
  describe ".decrypt" do
  context "run without argument" do
    it "returns unchanged sentence" do
      sample = Rot.new("abc")
      expect(sample.decrypt()).to eql("abc")
      end
    end
  end


  context "run with key: 1" do
    it "returns decrypted by key one" do
      sample = Rot.new("bcd")
      expect(sample.decrypt(1)).to eql("abc")
      end
    end

  context "run with key: 2" do
    it "returns decrypted by key two" do
      sample = Rot.new("cde")
      expect(sample.decrypt(2)).to eql("abc")
      end
    end

  context "run with 2 words and key: 1" do
    it "returns decrypted words separated by space, characters shifted by one" do
      sample = Rot.new("bcd bcd")
      expect(sample.decrypt(1)).to eql("abc abc")
      end
    end

  context "run with key: 27" do
    it "returns words shifted by key: 1" do
      sample = Rot.new("bcd bcd")
      expect(sample.decrypt(27)).to eql("abc abc")
      end
    end
  context "run with key: 5, word 'trl'" do
    it "returns word decrypted by key: 5, and get 'omg'" do
      sample = Rot.new("trl")
      expect(sample.decrypt(5)).to eql("omg")
      end
    end

  context "run with key: 0, word 'c'" do
    it "returns word decrypted by key: 0, and get 'c'" do
      sample = Rot.new("c")
      expect(sample.decrypt(0)).to eql("c")
      end
    end

  context "run with key: 26, words 'Cool'" do
    it "returns word decrypted by key: 26, and get 'Cool'" do
      sample = Rot.new("Cool")
      expect(sample.decrypt(26)).to eql("Cool")
      end
    end

  context "run with key: 13, sentence 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.'" do
    it "returns word decrypted by key: 13, and get 'The quick brown fox jumps over the lazy dog.'" do
      sample = Rot.new("Gur dhvpx oebja sbk whzcf bire gur ynml qbt.")
      expect(sample.decrypt(13)).to eql("The quick brown fox jumps over the lazy dog.")
      end
    end
end
