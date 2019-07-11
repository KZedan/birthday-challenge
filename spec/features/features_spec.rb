feature "asks for birthday info and then stores it" do
  scenario "user puts info in and sees it in page after" do
    visit('/')
    fill_in :birthday_name, with: 'Kareem'
    fill_in :birthday, with: 15
    select "July", from: 'month'
    click_button 'Go!'
    expect(page).to have_content('Kareem')
    expect(page).to have_content('July')
  end
end
