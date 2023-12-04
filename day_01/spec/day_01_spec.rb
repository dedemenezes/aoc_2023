require 'rspec'
require_relative '../day_01.rb'

RSpec.describe "Day 01" do
  describe '#calibration_numbers' do
    it 'returns the right number when start with a number and end with a number' do
      input = "1abc2"
      actual = calibration_numbers(input)
      calibration_value = 12
      expect(actual).to eq(calibration_value)
    end

    it 'returns the right number when containing two umbers in the middle of input' do
      input = 'pqr3stu8vwx'
      actual = calibration_numbers(input)
      calibration_value = 38
      expect(actual).to eq(calibration_value)
    end

    it 'returns the right number containing more than 3 digits into input' do
      input = 'a1b2c3d4e5f'
      actual = calibration_numbers(input)
      calibration_value = 15
      expect(actual).to eq(calibration_value)
    end

    it 'returns the right number, same number twice, if input has only one digit' do
      input = 'treb7uchet'
      actual = calibration_numbers(input)
      calibration_value = 77
      expect(actual).to eq(calibration_value)
    end
  end

  describe "#sum_of_calibration_values" do
    it "returns the right sum for given calibration document" do
      doc = "
        1abc2
        pqr3stu8vwx
        a1b2c3d4e5f
        treb7uchet
      "
      actual = sum_of_calibration_values(doc)
      expected = 142
      expect(expected).to eq(actual)
    end
  end
end
