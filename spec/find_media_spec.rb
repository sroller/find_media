require 'spec_helper.rb'

describe "find video files" do

	it "returns a list of files from HOME" do
		expect(FINDMEDIA::videos("C:/Users/steffenr.OPENTEXT/videos").size).to be > 0
	end

	it "returns a list of files from HOME" do
		expect(FINDMEDIA::videos.size).to be > 0
	end

	it "can access elements of the returned array" do
		va = FINDMEDIA::videos
		ap File.stat(va.first)
		expect(File.stat(va.first))
	end

	it "creates an MD5 digest of a file" do
		expect(FINDMEDIA::digest(__FILE__)).to be_a String
  end

end

describe "get file info" do

	it "gives statinfos" do
	end
end

describe "running with tags" do

  it "does nothing" do
    # pass
  end

  it "has a tag", :fast => true do
    # pass
  end

  it "does not have a tag" do
    # fail
  end
end
