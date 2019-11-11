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

  context "run with key: 2,punctations test" do
    it "returns unchanged punctations" do
      sample = Rot.new(",./'][;]!?'")
      expect(sample.encrypt(2)).to eql(",./'][;]!?'")
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
  end
