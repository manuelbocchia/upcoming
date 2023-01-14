class AttendedEventsController < ApplicationController
    
    before_action :authenticate_user!, only: %i[ edit update destroy ]

    def new
    end

    def create
    end

    def update
    end

end