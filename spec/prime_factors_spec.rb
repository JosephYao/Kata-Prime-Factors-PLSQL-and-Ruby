require 'spec_helper.rb'

describe "Prime Factors Test" do
	
	it "should return empty list when input is 1" do
		plsql.prime_factors(1).should == []
	end

	it "should return 2 when input is 2" do
		plsql.prime_factors(2).should == [2]
	end

	it "should return 3 when input is 3" do
		plsql.prime_factors(3).should == [3]
	end

	it "should return 2,2 when input is 4" do
		plsql.prime_factors(4).should == [2,2]
	end

end