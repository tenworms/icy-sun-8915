require "rails_helper"

RSpec.describe 'department index page' do
  it 'shows each department name and floor and employes names for each department' do
    it = Department.create!(name: "IT", floor: "Basement")
    accounting = Department.create!(name: "Accounting", floor: "1")

    jhon = it.employees.create!(name: "Jhon", level:"1")
    olivia = it.employees.create!(name: "Olivia", level:"2")
    ben = accounting.employees.create!(name: "Ben", level:"2")
    ali = accounting.employees.create!(name: "Ali", level:"1")

    visit "/departments"

    expect(page).to have_content("Department: IT")
    expect(page).to have_content("Department: Accounting")
    expect(page).to have_content("Jhon")
    expect(page).to have_content("Olivia")
    expect(page).to have_content("Ben")
    expect(page).to have_content("Ali")

  end

end
