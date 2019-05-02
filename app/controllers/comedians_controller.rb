class ComediansController < ApplicationController
  def index
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
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
