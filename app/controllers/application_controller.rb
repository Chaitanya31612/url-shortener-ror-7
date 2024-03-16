class ApplicationController < ActionController::Base
  def set_link
    id = Base62.decode(params[:id])
    @link = Link.find(id)
  end
end
