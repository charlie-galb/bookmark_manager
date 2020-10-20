require 'pg'

feature 'View bookmarks' do
  scenario 'it shows the bookmarks as a list' do

    Bookmarks.create('http://www.google.com')
    Bookmarks.create('http://www.makersacademy.com')
    Bookmarks.create('http://www.destroyallsoftware.com')

    visit "/bookmarks"

    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
  end
end

feature 'Add bookmark' do
  scenario 'user can add a bookmark to the list' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    visit "/bookmarks"
    fill_in('url', with: 'http://www.w3schools.com')
    click_on('Add bookmark')

    expect(page).to have_content "http://www.w3schools.com"
  end
end
