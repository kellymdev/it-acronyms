require 'rails_helper'

RSpec.describe AcronymsController do
  let!(:acronym) { create(:acronym) }

  describe "GET #index" do
    before do
      get :index
    end

    it "returns http status 200" do
      expect(response).to have_http_status(200)
    end

    it "assigns @acronyms to all acronyms ordered by name" do
      expect(assigns(:acronyms)).to eq(Acronym.all.order('lower(name)'))
    end

    it "renders the index view" do
      expect(response).to render_template(:index)
    end
  end

  describe "GET #show/:id" do
    before do
      get :show, { id: acronym.to_param }
    end

    it "assigns @acronym to the selected acronym" do
      expect(assigns(:acronym)).to eq(Acronym.find(acronym.id))
    end

    it "returns http status 200" do
      expect(response).to have_http_status(200)
    end

    it "renders the show page" do
      expect(response).to render_template(:show)
    end
  end

  describe "GET #search/:query" do
    before do
      get :search, { query: "AB" }
    end

    it "assigns @acronyms to the matching acronyms returned by the search" do
      expect(assigns(:acronyms)).to eq(Acronym.where("lower(name) LIKE ?", "%ab%"))
    end

    it "assigns @definitions to the matching definitions returned by the search" do
      expect(assigns(:definitions)).to eq(Acronym.where("lower(definition) LIKE ?", "%ab%"))
    end

    it "returns http status 200" do
      expect(response).to have_http_status(200)
    end

    it "renders the search results page" do
      expect(response).to render_template(:search)
    end
  end

  after do
    Acronym.destroy_all
  end
end