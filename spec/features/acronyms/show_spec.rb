require 'rails_helper'

RSpec.describe "Viewing details for an Acronym" do
  let!(:acronym) { create(:acronym) }

  before { visit "/acronyms/#{acronym.id}" }

  it "displays the acronym name" do
    within('h2') do
      expect(page).to have_content(acronym.name)
    end
  end

  it "displays the acronym definition" do
    expect(page).to have_content(acronym.definition)
  end

  it "displays the acronym description" do
    expect(page).to have_content(acronym.description)
  end
end