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

end

describe "get file info" do

	xit "gives statinfos" do
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
