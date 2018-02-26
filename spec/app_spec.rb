require "./app"

describe "the cipher function" do
	it "changes a letter to the next letter in the alphabet" do
		expect( encrypt("a") ).to eq("b")
	end

	it "changes two letters" do
		expect( encrypt("ac") ).to eq("bd")
	end

	it "retains case" do
		expect( encrypt("AbCaBc") ).to eq("BcDbCd")
	end

	it "changes more than one word" do
		expect( encrypt("aaa ccc") ).to eq("bbb ddd")
	end

	it "only changes letters" do
		expect( encrypt("Hello, world! 2018") ).to eq("Ifmmp, xpsme! 2018")
	end

	it "cycles through the alphabet" do
		expect( encrypt("xyz") ).to eq("yza")
	end

	# need to add factor function
end