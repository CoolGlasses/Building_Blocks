require './caesar_cipher.rb'

describe '#caesar_cipher' do
  it "returns the same number of characters given" do
    expect("apple".length).to eql(caesar_cipher("apple",5).length)
  end

  it "to shift the characters to the right when given positive" do   
    expect(caesar_cipher("fun", 5)).to eql "kzs"
  end

  it "to shift the characters to the left when given negative" do
    expect(caesar_cipher("fun", -5)).to eql "api"
  end

  it "should wrap around the alphabet when given a big number" do
    expect(caesar_cipher("zoo", 45)).to eql "shh"
  end

  it "should handle uppercase and lowercase letters" do 
    expect(caesar_cipher("tHiS", 3)).to eql "wKlV"
  end

  it "should handle sentences" do
    expect(caesar_cipher("This is a Sentence", 4)).to eql "Xlmw mw e Wirxirgi"
  end
end
