class WenwerController < ApplicationController
  
  def index
    
    @events = Event.all
    
  end
  
  def add_event
    
    @event = Event.new
    
  end
  
  def input_event
    
    event = params["event"]
    a = Event.new
    
    a.category = event[:category]
    a.name = event[:name]
    a.date = event[:date]
    a.venue = event[:venue]
    a.image = event[:image]
    a.url = event[:url]
    
    a.save
    
    redirect_to "/"
    
  end

  def detail
    
    @event = Event.find(params[:id])
    
  end
  
  def delete
    
    a = Event.find(params[:id])
    a.destroy
    
    redirect_to '/'
    
  end
  
  def edit
    
    @event = Event.find(params[:id])
    
  end

  def update
    
    
    a = Event.find(params[:id])
    
    a.category = params[:category]
    a.name = params[:name]
    a.date = params[:date]
    a.venue = params[:venue]
    a.image = params[:image]
    a.url = params[:url]
    
    a.save
    
    redirect_to "/detail/#{params[:id]}"
    
  end
end
