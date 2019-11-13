require "rot"

describe Rot do
  describe ".encrypt" do
    context "run without argument" do
      it "returns unchanged sentence when run without argument" do
        sample = Rot.new("abc")
        expect(sample.encrypt).to eql("abc")
      end
    end

    context "run with argument: 1" do
      it "returns shifted by key: 1 when argument is 1" do
        sample = Rot.new("abc")
        expect(sample.encrypt(1)).to eql("bcd")
      end
    end

    context "run with argument: 2" do
      it "returns shifted by key: 2 when argument is 2" do
        sample = Rot.new("abc")
        expect(sample.encrypt(2)).to eql("cde")
      end
    end

    context "run with punctations in sentence" do
      it "returns unchanged punctations" do
        sample = Rot.new(",./'][;]!?'")
        expect(sample.encrypt(2)).to eql(",./'][;]!?'")
      end
    end

    context "run with spaces in sentence" do
      it "ignores spaces when decrypting" do
        sample = Rot.new("abc abc")
        expect(sample.encrypt(1)).to eql("bcd bcd")
      end
    end

    context "run with key: 27" do
      it "returns words shifted by key: 1'" do
        sample = Rot.new("abc")
        expect(sample.encrypt(27)).to eql("bcd")
        end
      end

    context "run with key: 5" do
      it "returns word shifted by key: 5" do
        sample = Rot.new("omg")
        expect(sample.encrypt(5)).to eql("trl")
        end
      end

    context "run with key: 0" do
      it "returns word shifted by key: 0" do
        sample = Rot.new("c")
        expect(sample.encrypt(0)).to eql("c")
        end
      end

    context "run with key: 26" do
      it "returns word shifted by key: 26" do
        sample = Rot.new("Cool")
        expect(sample.encrypt(26)).to eql("Cool")
        end
      end

    context "run with key: 13" do
      it "returns words shifted by key: 13" do
        sample = Rot.new("The quick brown fox jumps over the lazy dog.")
        expect(sample.encrypt(13)).to eql("Gur dhvpx oebja sbk whzcf bire gur ynml qbt.")
        end
      end

    context "run with key: 13" do
      it "returns words shifted by key: 13" do
        sample = Rot.new("Gur dhvpx oebja sbk whzcf bire gur ynml qbt.")
        expect(sample.encrypt(13)).to eql("The quick brown fox jumps over the lazy dog.")
        end
      end
    end
  end
