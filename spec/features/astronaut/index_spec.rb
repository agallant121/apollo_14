require 'rails_helper'

RSpec.describe "As a visitor" do
  before :each do
    @astronaut_1 = Astronaut.create(name: "Alex", age: 31, job: "Commander")
    @astronaut_2 = Astronaut.create(name: "Phil", age: 29, job: "Pilot")
    @astronaut_3 = Astronaut.create(name: "Dave", age: 30, job: "Navigator")

    visit "/astronauts"
  end

  it "I see a list of astronauts and info from astronaut index page" do

    expect(page).to have_content(@astronaut_1.name)
    expect(page).to have_content(@astronaut_2.name)
    expect(page).to have_content(@astronaut_3.name)

    expect(page).to have_content(@astronaut_1.age)
    expect(page).to have_content(@astronaut_2.job)
  end
end
