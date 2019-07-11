feature "see greeter at the beginning of page" do
  scenario "user can see a greeter at the beginning of page" do
    visit('/')
    expect(page).to have_content 'Hello There!'
  end
end

feature "Stores user data that was filled out in form" do
  scenario "user fills in form and it is stored as param" do
    visit('/')
    expect(page).to have_button 'Submit'
  end
end
