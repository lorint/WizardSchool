require 'spec_helper'

describe Wizard do
  it 'is invalid without a first name' do
    unnamed = Wizard.new(last_name: "Wizard", house: "Hufflepuff", is_muggle: false)
    expect(unnamed).to be_invalid
  end

  it 'is invalid without a last name' do
    unlastnamed = Wizard.new(first_name: "Anonymous", house: "Hufflepuff", is_muggle: false)
    expect(unlastnamed).to be_invalid
  end

  it 'is invalid without a house' do
    unsorted = Wizard.new(first_name: "Anonymous", last_name: "Wizard", is_muggle: false)
    expect(unsorted).to be_invalid
  end

  it 'is invalid if is_muggle has not been set' do
    squib = Wizard.new(first_name: "Anonymous", last_name: "Wizard", house: "Hufflepuff")
    expect(squib).to be_invalid
  end

  describe "#full_name" do
      it "returns the wizard's full name (first and last) as a string" do
        harry = Wizard.new(first_name: "Harry", last_name: "Potter")
        expect(harry.full_name).to eq "Harry Potter"
      end
      it "capitalizes the first and last names of wizards if they're entered in lowercase" do
        fred = Wizard.new(first_name: "fred", last_name: "weasley")
        expect(fred.full_name).to eq "Fred Weasley"
      end
  end

  describe "#full_name_with_initial" do
      it "returns the wizard's first name, middle initial, and last name (if the wizard has a middle name)" do
        harry = Wizard.new(first_name: "Harry", last_name: "Potter", middle_name: "James")
        expect(harry.full_name_with_initial).to eq "Harry J. Potter"
      end

      it "returns only the first and last name of a wizard who does not have a middle name" do
        ron = Wizard.new(first_name: "Ron", last_name: "Weasley")
        expect(ron.full_name_with_initial).to eq "Ron Weasley"
      end

      it "capitalizes names appropriately if entered in lowercase" do
        voldemort = Wizard.new(first_name: "tom", middle_name: "marvolo", last_name: "riddle")
        expect(voldemort.full_name_with_initial).to eq "Tom M. Riddle"
      end
  end

  describe "#email" do
      it "returns a wizard's email in the format of first_name@house.com" do
        hermione = Wizard.new(first_name: "Hermione", house: "Gryffindor")
        expect(hermione.email).to eq "hermione@gryffindor.com"
      end

      it "returns a muggle's email in the format of first_name@muggle.com" do
        dudley = Wizard.new(first_name: "Dudley", is_muggle: true)
        expect(dudley.email).to eq "dudley@muggle.com"
      end
  end

end