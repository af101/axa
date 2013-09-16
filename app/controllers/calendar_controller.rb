class CalendarController < ApplicationController
  
  def index
    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i

    @shown_month = Date.civil(@year, @month)

    @event_strips = Event.event_strips_for_month(@shown_month)
  end

  def show
    id = params[:id]
    @causa=Event.find(id)
  end

  def index2
    session[:sort_by]=nil unless session.has_key?(:sort_by)
    session[:sort_by]=params[:sort_by] if params.has_key?(:sort_by)
    @events=Event.all
    @hilite={}
    if (session[:sort_by])
       @hilite[session[:sort_by]]="hilite"
       @events = @events.order("#{session[:sort_by]} asc")
    end
  end

  def new
    #default: render 'new' template
  end

  def create
    @event=Event.new(event_params)
    @event.save!#=Event.create!(params[:event])
    flash[:notice]="Event #{@event.codice_event} creata con successo."
    redirect_to calendar
  end

  def edit
    @event = event.find params[:id]
  end

  def update
    @event = Event.find params[:id]
    @event.update_attributes!(event_params)
    flash[:notice] = "Causa #{@event.codice_causa} aggiornata con successo."
    redirect_to calendar_path
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "Causa #{@event.codice_causa} eliminata."
    redirect_to calendar_path
  end

  private

  def event_params
    params.require(:event).permit(:luogo, :chiamante, :chiamato, :avvocato_chiamante, :avvocato_chiamato, :giudice, :codice_causa, :data)
  end
  
end
