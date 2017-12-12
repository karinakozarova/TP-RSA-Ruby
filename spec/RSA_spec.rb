require 'RSA'

RSpec.describe RSA do

  describe 'new_key' do
    it "returns an array with exactly 3 values" do
      helper = RSA.new(1,2,3).new_key.size()
      expect(helper).to eq 3
    end

    it "values[0] of the key should be >= 1" do
      helper = RSA.new(1,2,3).new_key
      expect(helper[0]).to be >= 1
    end

    it "values[1] of the key should be >= 1" do
      helper = RSA.new(1,2,3).new_key
      expect(helper[1]).to be >= 1
    end

    it "values[2] of the key should be >= 1" do
      helper = RSA.new(1,2,3).new_key
      expect(helper[2]).to be >= 1
    end

  end

  describe 'encrypt' do

  end
  describe 'decrypt' do
    it "back and forth" do
      tester = RSA.new(1,2,3)
      res1 = tester.decrypt("sample string")
      res2 = tester.decrypt("sample string")
      expect(res1).to eq res2
    end
  end

  describe 'initialize' do
    it "1 2 3 initialize" do
      helper = RSA.new(1,2,3)
      expect(helper.n).to eq 1
      expect(helper.e).to eq 2
      expect(helper.d).to eq 3
    end

    it "999 999 999 initialize" do
      helper = RSA.new(999,999,999)
      expect(helper.n).to eq 999
      expect(helper.e).to eq 999
      expect(helper.d).to eq 999
    end
  end

  describe 'n' do
    it "when 81 2 3 initialize" do
      helper = RSA.new(81,2,3)
      expect(helper.n).to eq 81
    end

    it "1024 1024 1024 initialize" do
      helper = RSA.new(1024,1024,1024)
      expect(helper.n).to eq 1024
    end

    it "expect to be of type Fixnum" do
      expect(RSA.new(999,999,999).n).to be_a_kind_of(Fixnum)
    end
  end

  describe 'e' do
    it "when 1 77 3 initialize" do
      helper = RSA.new(1,77,3)
      expect(helper.e).to eq 77
    end

    it "999 999 999 initialize" do
      helper = RSA.new(999,999,999)
      expect(helper.e).to eq 999
    end

    it "expect to be of type Fixnum" do
      expect(RSA.new(999,999,999).e).to be_a_kind_of(Fixnum)
    end
  end

  describe 'd' do
    it "when 1 2 342434234324 initialize" do
      helper = RSA.new(1,2,342434234324)
      expect(helper.d).to eq 342434234324
    end

    it "999 999 999 initialize" do
      helper = RSA.new(999,999,999)
      expect(helper.d).to eq 999
    end

    it "expect to be of type Fixnum" do
      expect(RSA.new(999,999,999).d).to be_a_kind_of(Fixnum)
    end
  end



end
