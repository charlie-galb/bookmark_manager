require 'model/bookmarks.rb'

describe Bookmarks do

  it "stores and returns bookmarks" do

    Bookmarks.create('http://www.google.com')
    Bookmarks.create('http://www.makersacademy.com')
    Bookmarks.create('http://www.destroyallsoftware.com')
    expect(Bookmarks.all).to include("http://www.google.com")
    expect(Bookmarks.all).to include("http://www.makersacademy.com")
    expect(Bookmarks.all).to include("http://www.destroyallsoftware.com")
  end

end
