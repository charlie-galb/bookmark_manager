feature 'index' do
  scenario 'it says "Bookmark Manager" at the top' do
    visit "/"
    expect(page).to have_content("Bookmark Manager")
  end

  feature 'index' do
    scenario 'it shows the bookmarsk as a list' do
      visit "/bookmarks"

      expect(page).to have_content "http://www.makersacademy.com"
      expect(page).to have_content "http://www.theguardian.com"
    end
  end
end
