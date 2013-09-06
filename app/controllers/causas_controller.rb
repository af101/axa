class CausasController < ApplicationController

  def show
    id = params[:id]
    @causa=Causa.find(id)
  end

  def index
    session[:sort_by]=nil unless session.has_key?(:sort_by)
    session[:sort_by]=params[:sort_by] if params.has_key?(:sort_by)
    @causas=Causa.all
    @hilite={}
    if (session[:sort_by])
       @hilite[session[:sort_by]]="hilite"
       @causas = @causas.order("#{session[:sort_by]} asc")
    end
  end

  def new
    #default: render 'new' template
  end

  def create
    @causa=Causa.new(causa_params)
    @causa.save!#=Causa.create!(params[:causa])
    flash[:notice]="Causa #{@causa.codice_causa} creata con successo."
    redirect_to causas_path
  end

  def edit
    @causa = Causa.find params[:id]
  end

  def update
    @causa = Causa.find params[:id]
    @causa.update_attributes!(causa_params)
    flash[:notice] = "Causa #{@causa.codice_causa} aggiornata con successo."
    redirect_to causa_path(@causa)
  end

  def destroy
    @causa = Causa.find(params[:id])
    @causa.destroy
    flash[:notice] = "Causa #{@causa.codice_causa} eliminata."
    redirect_to causas_path
  end

  private

  def causa_params
    params.require(:causa).permit(:luogo, :chiamante, :chiamato, :avvocato_chiamante, :avvocato_chiamato, :giudice, :codice_causa, :data)
#    params.require(:causa).permit(:luogo, :chiamante, :chiamato, :avvocato_chiamante, :avvocato_chiamato, :giudice, :codice_causa)
  end
end
