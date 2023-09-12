class ApplicationController < ActionController::Base
  def set_link
    @link = Link.find(params[:id])
  end
end
