class ServiciosController < ApplicationController
  def show
  end

  def new
	@servicio = Servicio.new
  end

  def index
	@servicios = Servicio.order(:name)
  end

  def create
    @servicio = Servicio.new(servicio_params)
	if params[:image_id].present?
	  preloaded = Cloudinary::PreloadedFile.new(params[:image_id])
	     # Verify signature by calling preloaded.valid?
	  @servicio.image = preloaded.identifier
	end

    if @servicio.save
      flash[:notice_bootstrap] = "Successfully created servicio."
      redirect_to root_path
    else
      render :action => 'new'
    end
  end

    def servicio_params
      params.require(:servicio).permit(:name, :nameca, :description, :descriptionca)
    end

end
