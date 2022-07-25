require "rails_helper"

RSpec.describe 'employees show page' do
  it "shows the employees name, department" do
    it = Department.create!(name: "IT", floor: "Basement")
    accounting = Department.create!(name: "Accounting", floor: "1")

    jhon = it.employees.create!(name: "Jhon", level:"1")
    olivia = it.employees.create!(name: "Olivia", level:"2")
    ben = accounting.employees.create!(name: "Ben", level:"2")
    ali = accounting.employees.create!(name: "Ali", level:"1")

    visit "/employees/#{jhon.id}"
    save_and_open_page

    expect(page).to have_content("Jhon")
    expect(page).to have_content("IT")
  end
end
