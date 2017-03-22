describe "it runs" do
  it "1 == 1" do
    expect(1).to eq(1)
  end

  it "does nothing" do
    # pass
  end

  it "has a tag", :fast => true do
    # pass
  end

  it "does not have a tag" do
    fail
  end
end
