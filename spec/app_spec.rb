require "./app"

describe "the cipher function" do
	it "changes a letter to the next letter in the alphabet" do
		expect( encrypt("a") ).to eq("b")
	end

	it "changes two letters" do
		expect( encrypt("ac") ).to eq("bd")
	end
end