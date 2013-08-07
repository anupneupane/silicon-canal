class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy, :approve, :unapprove]
  before_action :authenticate_admin!, only: [:approve, :unapprove]

  # GET /events
  def index
    @events = Event.all.decorate
  end

  # GET /events/1
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
    redirect_to events_url, notice: 'Event was successfully destroyed.'
  end
  
  # PATCH/PUT /events/1/approve
  def approve
    @event.update({:approved_at => Time.now})
    redirect_to events_url, notice: 'Event was successfully approved.'
  end
  
  # PATCH/PUT /events/1/unapprove
  def unapprove
    @event.update({:approved_at => nil})
    redirect_to events_url, notice: 'Event was successfully unapproved.'
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params[:event][:category_ids] ||= []
      params.require(:event).permit(:name, :starts_at, :ends_at, :description, :location, :website, :created_by, :updated_by, :category_ids => [])
    end

end
