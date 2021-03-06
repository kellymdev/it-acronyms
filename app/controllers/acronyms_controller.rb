class AcronymsController < ApplicationController
  def index
    @acronyms = Acronym.all.order(Arel.sql("lower(name)"))
  end

  def show
    @acronym = Acronym.find(params[:id])
  end

  def search
    term = "%" + params[:query].downcase + "%"
    @acronyms = Acronym.where("lower(name) LIKE ?", term)
    @definitions = Acronym.where("lower(definition) LIKE ?", term)
  end
end