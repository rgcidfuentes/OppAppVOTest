class PeepsController < ApplicationController
  def new
	@peep = Peep.new
  end

  def index
	@peeps = Peep.all
  end

  def create
    @peep = Peep.new(peep_params)
    if @peep.save
      flash[:notice_bootstrap] = "Peep creado correctamente."
      redirect_to root_path
    else
      render :action => 'new'
    end
  end

  def peep_params
      params.require(:peep).permit(:name, :description, :carrec, :image)
  end
end
