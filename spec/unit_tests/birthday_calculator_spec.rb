require 'birthday_calculator'

describe BirthdayCalculator do
  let(:birthday) {described_class.new("Kareem", 15, 7)}

  context "Birthday is today" do
    before do
      allow(birthday).to receive(:today?).and_return(true)
    end

    it "confirms birthday is today" do
      expect(birthday.today?).to eq true
    end

    it "prints Happy Birthday" do
      expect(birthday.print).to eq "Happy Birthday Kareem!"
    end
  end

  context "Birthday is another time" do
    before do
      allow(birthday).to receive(:today?).and_return(false)
    end

    it "confirms birthday is not today" do
      expect(birthday.today?).to eq false
    end

    it "prints out how long till birthday" do
      time = Time.new
      today = time.day
      current_month = time.month
      expect(birthday.time_left).to eq "Your birthday is in #{15 - today} days and #{current_month - 07} months"
    end
  end
end
