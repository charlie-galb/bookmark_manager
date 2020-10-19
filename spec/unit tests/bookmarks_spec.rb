require 'model/bookmarks.rb'

describe Bookmarks do
  it "responds to all method" do
    expect(subject).to respond_to(:all)
  end

  it "returns default bookmarks" do
    expect(subject.all).to eq (["http://www.makersacademy.com", "http://www.theguardian.com"])
  end
end
