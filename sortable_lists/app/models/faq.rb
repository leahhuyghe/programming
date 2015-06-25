class Faq < ActiveRecord::Base

  def index
    render text: 'Hello from FAQ controller'
  end


end
