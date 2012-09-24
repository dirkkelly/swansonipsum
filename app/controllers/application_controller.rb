class ApplicationController < ActionController::Base
  protect_from_forgery
  respond_to :html
  layout :set_layout

  private

  def set_layout
    if request.headers['X-PJAX']
      false
    else
      "application"
    end
  end
end
