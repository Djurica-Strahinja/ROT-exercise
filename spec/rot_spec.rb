require "rot"

#encrypt func

describe Rot do
  describe ".encrypt" do
    it "returns unchanged sentence when run without argument" do
      sample = Rot.new("abc")
      expect(sample.encrypt).to eql("abc")
    end
  end

    it "returns shifted by key: 1 when argument is 1" do
      sample = Rot.new("abc")
      expect(sample.encrypt(1)).to eql("bcd")
    end

    it "returns shifted by key: 2 when argument is 2" do
      sample = Rot.new("abc")
      expect(sample.encrypt(2)).to eql("cde")
    end

    it "returns unchanged punctations" do
      sample = Rot.new(",./'][;]!?'")
      expect(sample.encrypt(2)).to eql(",./'][;]!?'")
    end

    it "ignores spaces when decrypting" do
      sample = Rot.new("abc abc")
      expect(sample.encrypt(1)).to eql("bcd bcd")
    end

  context "run with key: 27" do
    it "returns words shifted by key: 1'" do
      sample = Rot.new("abc")
      expect(sample.encrypt(27)).to eql("bcd")
      end
    end

#test for examples from assignment
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

  context "run with key: 13, words 'The quick brown fox jumps over the lazy dog.'" do
    it "returns word shifted by key: 13, and get 'Gur dhvpx oebja sbk whzcf bire gur ynml
qbt.'" do
      sample = Rot.new("The quick brown fox jumps over the lazy dog.")
      expect(sample.encrypt(13)).to eql("Gur dhvpx oebja sbk whzcf bire gur ynml qbt.")
      end
    end

  context "run with key: 13, words 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.'" do
    it "returns word shifted by key: 13, and get 'The quick brown fox jumps over the lazy dog.'" do
      sample = Rot.new("Gur dhvpx oebja sbk whzcf bire gur ynml qbt.")
      expect(sample.encrypt(13)).to eql("The quick brown fox jumps over the lazy dog.")
      end
    end
  end
