feature "outputs string depending on if birthday is today or not" do
  scenario "birthday is 3 days from today" do
    visit('/')
    fill_in :birthday_name, with: 'Kareem'
    fill_in :birthday, with: 15
    select "July", from: 'month'
    click_button 'Go!'
    expect(page).to have_content('Your birthday is in 3 days and 0 months')
  end
end
