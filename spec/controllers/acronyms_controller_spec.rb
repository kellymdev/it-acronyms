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
      expect(assigns(:acronyms)).to eq(Acronym.all.order(:name))
    end

    it "renders the index view" do
      expect(response).to render_template(:index)
    end
  end

  after do
    Acronym.destroy_all
  end
end