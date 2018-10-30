class WowtController < ApplicationController
  def index
    @wowts = Wowt.all # dumb!
    respond_to :html
  end

  def show
    @wowt = Wowt.find params[:id]
    respond_with @wowt
  end
end
