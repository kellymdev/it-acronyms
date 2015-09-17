require 'rails_helper'

RSpec.describe "Viewing the Acronyms List" do
  let!(:acronym) { create(:acronym) }

  before { visit '/acronyms' }

  it "should have a title of Acronyms" do
    within('h2') do
      expect(page).to have_content("Acronyms")
    end
  end

  it "displays the name for the acronym" do
    expect(page).to have_content(acronym.name)
  end

  it "displays the definition for the acronym" do
    expect(page).to have_content(acronym.definition)
  end

  it "doesn't show the description for the acronym" do
    expect(page).to_not have_content(acronym.description)
  end
end