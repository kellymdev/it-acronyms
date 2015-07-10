class AcronymsController < ApplicationController

  def index
    @acronyms = Acronym.all.order(:name)
  end

  def show
    @acronym = Acronym.find(params[:id])
  end

end