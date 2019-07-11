feature "see greeter at the beginning of page" do
  scenario "user can see a greeter at the beginning of page" do
    visit('/')
    expect(page).to have_content 'Hello There!'
  end
end
