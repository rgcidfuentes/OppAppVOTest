class PeepsController < ApplicationController
  def new
	@peep = Peep.new
  end

  def index
	@peeps = Peep.all
  end

  def create
    @peep = Peep.new(peep_params)
    if params[:image_id].present?
	  preloaded = Cloudinary::PreloadedFile.new(params[:image_id])
	     # Verify signature by calling preloaded.valid?
	  @peep.image = preloaded.identifier
    end
    if @peep.save
      flash[:notice_bootstrap] = "Peep creado correctamente."
      redirect_to root_path
    else
      render :action => 'new'
    end
  end

  def peep_params
      params.require(:peep).permit(:name, :description, :descriptionca, :carrec, :carrecca)
  end
end
