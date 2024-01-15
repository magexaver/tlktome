# frozen_string_literal: true

class EventsController < ApplicationController
  def index
    @pagy, @events = pagy(Events::Index.new(current_user:).call)
  end

  def show
    @event = current_user.events.find(params[:id])
  end

  def new; end
  def create; end
  def edit; end
  def update; end
  def destroy; end
end
