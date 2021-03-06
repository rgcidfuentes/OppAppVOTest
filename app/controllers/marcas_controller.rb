class MarcasController < ApplicationController
  def index
	@marcas = Marca.order(:name)
  end

  def new
	@marca = Marca.new
  end

  def create
	@marca = Marca.new(marca_params)
	if params[:image_id].present?
	  preloaded = Cloudinary::PreloadedFile.new(params[:image_id])
	     # Verify signature by calling preloaded.valid?
	  @marca.image = preloaded.identifier
	end

	if @marca.save
        flash[:notice_bootstrap] = "Successfully created servicio."
        redirect_to root_path
    else
      render :action => 'new'
    end
  end

  def marca_params
      params.require(:marca).permit(:name)
  end

end
