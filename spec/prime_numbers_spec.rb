require './prime_numbers.rb'

RSpec.describe 'prime numbers' do

  it 'checks whether 0 is prime: ArgumentError' do
    number = 0
    expect {
      number_is_prime = is_prime(number)
    }.to raise_error(ArgumentError, "not a natural number greater than 1")
  end

  it 'checks whether 1 is prime: ArgumentError' do
    number = 1
    expect {
      number_is_prime = is_prime(number)
    }.to raise_error(ArgumentError, "not a natural number greater than 1")
  end

  it 'checks whether 2 is prime: true' do
    number = 2
    number_is_prime = is_prime(number)
    expect(number_is_prime).to eq(true)
  end

  it 'checks whether 17 is prime: true' do
    number = 17
    number_is_prime = is_prime(number)
    expect(number_is_prime).to eq(true)
  end

  it 'checks whether 10 is prime: false' do
    number = 10
    number_is_prime = is_prime(number)
    expect(number_is_prime).to eq(false)
  end

  it 'checks whether -17 is prime: ArgumentError' do
    number = -17
    expect {
      number_is_prime = is_prime(number)
    }.to raise_error(ArgumentError, "not a natural number greater than 1")
  end

  it 'checks whether "three" is prime: ArgumentError' do
    number = "three"
    expect {
      number_is_prime = is_prime(number)
    }.to raise_error(ArgumentError, "not a natural number greater than 1")
  end

  it 'checks whether 127 is prime: true' do
    number = 127
    number_is_prime = is_prime(number)
    expect(number_is_prime).to eq(true)
  end

  it 'checks whether 143 is prime: false' do
    number = 143
    number_is_prime = is_prime(number)
    expect(number_is_prime).to eq(false)
  end

end
