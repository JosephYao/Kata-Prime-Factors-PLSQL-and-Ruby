require 'spec_helper.rb'

describe "Prime Factors Test" do
	
	it "should return empty list when input is 1" do
		plsql.prime_factors(1).should == []
	end

end