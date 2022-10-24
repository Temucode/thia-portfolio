class DessinsController < ApplicationController

  def index
    @dessins = Dessin.all
  end

  def show
    @dessin = Dessin.find(params[:id])
  end

  def new
    @dessin = Dessin.new
  end

  def create
    @dessin = Dessin.new(dessin_params)
    @dessin.save
    redirect_to dessins_path(@dessin)
  end

  def edit
    @dessin = Dessin.find(params[:id])
  end

  def update
    @dessin = Dessin.find(params[:id])
    @dessin.update(dessin_params)
    redirect_to dessins_path(@dessin)
  end

  def destroy
    @dessin = Dessin.find(params[:id])
    @dessin.destroy
    redirect_to dessin_path, status: :see_other
  end

  private

  def dessin_params
    params.require(:dessin).permit(:name, :description)
  end
end
