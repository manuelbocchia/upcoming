class EventAttendingsController < ApplicationController
    
    before_action :authenticate_user!, only: %i[ new edit update destroy ]

    def new
        @event_attending = AttendedEvent.new
    end

    def create
        @event_attending = current_user.event_attendings.create(attended_events_id: params[:format])
        if @event_attending.save!
          flash.alert = "You registered!"
          render "event_attendings/attend"
        else
          flash.alert = "An error occured in your registration"
          redirect_to events_path
        end
    end

    def update
        set_event_attending
        @event_attending = event_attending_params
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_attending
      @event_attending = AttendedEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_attending_params
      params.fetch(:user, {}).require(:attendee, :attended_events).permit(:id)
    end


end