require 'rails_helper'

RSpec.describe "Searching for acronyms" do
  let!(:acronym) { create(:acronym) }

  context "Search that returns results" do
    before do
      visit "/acronyms"
      within('nav') do
        fill_in "query", with: "AB"
        click_button "Search"
      end
    end

    it "displays the search results page" do
      within('h2') do
        expect(page).to have_content("Search Results")
      end
    end

    it "displays the name of the acronyms that matched the search term" do
      expect(page).to have_content(acronym.name)
    end

    it "displays the definition of the acronyms that matched the search term" do
      expect(page).to have_content(acronym.definition)
    end
  end
end