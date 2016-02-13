class StyleguideController < ApplicationController #::ActionController::Base
  # layout false
  def show
    respond_to do |format|
      format.html
      format.json { render json: nil }
    end
  end
end
