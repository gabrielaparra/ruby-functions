require "./spec_helper"
require "../lib/zombie.rb"

describe Zombie do
	it "is named Ash" do 
		zombie = Zombie.new
		# zombie.name.should == "Ash"
		expect(zombie.name).to eq("Ash")
	end

	it "has no brains" do
		zombie = Zombie.new
		# zombie.brains.should < 1
		expect(zombie.brains).to be < 1
	end

	it "is hungry" do
		zombie = Zombie.new
		zombie.should be_hungry
		expect(zombie.hungry?).to be_truthy
		#predicate matcher
	end

	xit "is alive" do
	#the x before the it makes the test pending,
	#useful for debugging, to pass a test at a time
		zombie = Zombie.new
		expect(zombie.alive?).to be_falsey
	end
end