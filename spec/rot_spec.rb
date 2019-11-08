require "rot"

#encrypt func

describe Rot do
  describe ".encrypt" do
  context "run without argument" do
    it "return unchanged sentence" do
      sample = Rot.new("abc")
      expect(sample.encrypt()).to eql("abc")
      end
    end
  end

  describe ".encrypt" do
  context "run argument 1" do
    it "should return shifted by one" do
      sample = Rot.new("abc")
      expect(sample.encrypt(1)).to eql("bcd")
      end
    end
  end

  describe ".encrypt" do
  context "run with 2 words" do
    it "should return shifted words separated by space" do
      sample = Rot.new("abc abc")
      expect(sample.encrypt(1)).to eql("bcd bcd")
      end
    end
  end

  describe ".encrypt" do
  context "run with argument greater then 26" do
    it "should return 'bcd bcd'" do
      sample = Rot.new("abc abc")
      expect(sample.encrypt(27)).to eql("bcd bcd")
      end
    end
  end

#decrypt func
  describe ".decrypt" do
  context "run without argument" do
    it "return unchanged sentence" do
      sample = Rot.new("abc")
      expect(sample.decrypt()).to eql("abc")
      end
    end
  end

  describe ".decrypt" do
  context "run argument 1" do
    it "should return decrypted by key one" do
      sample = Rot.new("bcd")
      expect(sample.decrypt(1)).to eql("abc")
      end
    end
  end

  describe ".decrypt" do
  context "run with 2 words" do
    it "should return decrypted with key, 2 words separated by space" do
      sample = Rot.new("bcd bcd")
      expect(sample.decrypt(1)).to eql("abc abc")
      end
    end
  end

  describe ".decrypt" do
  context "run with argument greater then 26" do
    it "should return 'abc abc'" do
      sample = Rot.new("bcd bcd")
      expect(sample.decrypt(27)).to eql("abc abc")
      end
    end
  end

end
