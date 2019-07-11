require 'birthday_calculator'

describe BirthdayCalculator do
  let(:birthday) {described_class.new(name, day, month)}
  let(:name) {double(:name)}
  let(:day) {double(:day)}
  let(:month) {double(:month)}

  context "Birthday is today" do

    it "confirms birthday is today" do
      expect(birthday.today?).to eq true
    end

    it "prints Happy Birthday" do
      expect(birthday.print).to eq "Happy Birthday #{name}!"
    end
  end

  context "Birthday is another time" do
    before do
      time_left = double(:time_left)
    end

    it "confirms birthday is not today" do
      expect(birthday.today?).to eq false
    end

    it "prints out how long till birthday" do
      expect(birthday.time_left).to eq time_left
    end
  end
end
