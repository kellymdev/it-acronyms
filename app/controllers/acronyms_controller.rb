class AcronymsController < ApplicationController

  def index
    @acronyms = Acronym.all.order(:name)
  end

end