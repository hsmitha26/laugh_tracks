class ComediansController < ApplicationController
  def index
    if params[:age]
      @comedians = Comedian.find_by_query(params[:age])
      @average_age = @comedians.find_average_age.to_i
      @cities = @comedians.find_cities
    else
      @comedians = Comedian.all
      @average_age = @comedians.find_average_age.to_i
      @cities = @comedians.find_cities
    end
  end

  def show
    @comedian = Comedian.find(params[:id])
  end

  def new
    @comedian = Comedian.new
  end

  def create
    comedian = Comedian.new(comedian_params)
    if comedian.save
      redirect_to "/comedians/#{comedian.id}"
    end
  end

  private

  def comedian_params
    params.require(:comedian).permit(:name, :age, :city)
  end
end
