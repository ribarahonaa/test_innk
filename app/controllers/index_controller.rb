class IndexController < ApplicationController

  def index
    @series = Serie.all
    @films = Film.all
  end
  
end
