require "./app"

describe "the cipher function" do
	it "changes a letter to the next letter in the alphabet" do
		expect( encrypt("a") ).to eq("b")
	end

	it "changes two letters" do
		expect( encrypt("ab") ).to eq("bc")
	end
end