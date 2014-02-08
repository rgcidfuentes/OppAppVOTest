class MarcasController < ApplicationController
  def index
	@marcas = Marca.order(:name)
  end

  def new
	@marca = Marca.new
  end

  def create
	@marca = Marca.new(marca_params)
	if @marca.save
        flash[:notice_bootstrap] = "Successfully created servicio."
        redirect_to root_path
    else
      render :action => 'new'
    end
  end

  def marca_params
      params.require(:marca).permit(:name, :image)
  end

end
