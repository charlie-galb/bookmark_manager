require 'pg'

feature 'index' do
  scenario 'it says "Bookmark Manager" at the top' do
    visit "/"
    expect(page).to have_content("Bookmark Manager")
  end

  feature 'bookmarks' do
    scenario 'it shows the bookmarks as a list' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.google.com')")
      connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.destroyallsoftware.com');")

      visit "/bookmarks"

      expect(page).to have_content "http://www.google.com"
      expect(page).to have_content "http://www.makersacademy.com"
      expect(page).to have_content "http://www.destroyallsoftware.com"
    end
  end
end
