class RequestsController < ApplicationController


# I ran this in my terminal and it took me forever to figure out the specificity for this, especially radio button.

#bin/rails generate model Request name:string email:string department:boolean message:text

  def destroy
    @request = Request.find(params[:id])
    @request.destroy

    redirect_to requests_path
  end


  def edit
    @request = Request.find(params[:id])
  end


  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
  end


  def create
    @request = Request.new(request_params)


    if @request.save
    redirect_to @request
  else
    render 'new'
  end
  end


  def update
  @request = Request.find(params[:id])

  if @request.update(request_params)
    redirect_to @request
  else
    render 'edit'
  end
end


private

  def request_params
    params.require(:request).permit(:name, :email, :department, :message)
  end

end
