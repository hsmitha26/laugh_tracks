class ComediansController < ApplicationController
  def index
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end
  end

  def new
    @comedian = Comedian.new
  end

  def create
    comedian = Comedian.create(new_params)
    redirect_to '/comedians'
  end

  private

  def new_params
    params.require(:comedian).permit(:name, :age, :city)
  end
end
