require 'spec_helper'

RSpec.describe 'eratos' do
  it "2以下の素数" do
    expect(Eratos.get_prime_array(2)).to eq "2"
  end
  it "3以下の素数" do
    expect(Eratos.get_prime_array(4)).to eq "2, 3"
  end
  it "29以下の素数" do
    expect(Eratos.get_prime_array(29)).to eq "2, 3, 5, 7, 11, 13, 17, 19, 23, 29"
  end
  it "30以下の素数" do
    expect(Eratos.get_prime_array(30)).to eq "2, 3, 5, 7, 11, 13, 17, 19, 23, 29"
  end
  it "49以下の素数" do
    expect(Eratos.get_prime_array(49)).to eq "2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47"
  end
end