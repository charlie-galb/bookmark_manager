require 'model/bookmarks.rb'

describe Bookmarks do

  it "returns default bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
    expect(Bookmarks.all).to include("http://www.google.com")
    expect(Bookmarks.all).to include("http://www.makersacademy.com")
    expect(Bookmarks.all).to include("http://www.destroyallsoftware.com")
  end

end
