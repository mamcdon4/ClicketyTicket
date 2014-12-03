class EventsController < ApplicationController
  
  def index
    #these two work for non caching system
    #@events = Event.where('when_at >= (?)', DateTime.now.beginning_of_day ).all
    #@events = @events.where('available_tickets > 0').all
    #end working non chache system
    
    
    #SQL Caching start------------------------------------
    @events = Rails.cache.fetch("your_cache_key", :expires_in => 5.minutes) do
      Event.where('when_at >= (?)', DateTime.now.beginning_of_day ).all
      @events = @events.where('available_tickets > 0').all
    end
    
    #SQL Caching END--------------------------------
    
  end
  
  def selected
    @selected_event = Event.find(params[:id])
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def current
    #puts params.include?(:id)
    
    @current_event = Event.find(params[:id])
    # if ! @current_event.nil?
    # flash[:success] = "Event created"
    # flash[:notice] = "WHAT"
    # else
    # flash[:success] = "NOPE"
    # flash[:notice] = "NOPE"
    # end
  end
  
  def new
    @event = Event.new
  end
  
  def create
    @event = $current_user.events.build(event_params)
    
    respond_to do |format|
      if @event.save
        #redirect_to @event
        format.html { redirect_to events_new_url, notice: 'Event was successfully created.' }
        flash[:success] = "Event created"
      else
        render 'new'
      end
    end
  end
  
  def destroy
  end
  
  private
  
    def event_params
      params.require(:event).permit(:title, :event_thumb, :venue, :when_at,
        :total_tickets, :available_tickets)
    end
end
