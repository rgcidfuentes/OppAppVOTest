class ConsultasController < ApplicationController
  def create
	@consulta = Consulta.new(consulta_params)
    	if @consulta.save
		flash[:notice_bootstrap] = "La consulta ha sido enviada correctamente"
      		redirect_to root_path
    	else
      		render 'new'
    	end
  end

  def new
	@consulta = Consulta.new
  end

  def index
	@consulta = Consulta.order(created_at: :desc)
  end

  def show
	@consulta = Consulta.find(params[:id])
  end

  private

    def consulta_params
      params.require(:consulta).permit(:name, :email, :asunto, :message)
    end
end
