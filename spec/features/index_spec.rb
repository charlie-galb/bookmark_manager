feature 'index' do
  scenario 'it says "Bookmark Manager" at the top' do
    visit "/"
    expect(page).to have_content("Bookmark Manager")
  end
end
