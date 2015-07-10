class AcronymsController < ApplicationController

  def index
    @acronyms = Acronym.all
  end

end