class ResponsesController < ApplicationController
  
  def index
  end

  def show

  end

  def new
  end

  def edit
  end

  def update
  end

  def create
    @response = Response.new(response_params)

    respond_to do |format|
      if @response.save
        format.html { redirect_to @response, notice: 'Response was successfully created.' }
        format.json { render :show, status: :created, location: @response }
      else
        format.html { render :new }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

end

private
  def set_response
    @response = Response.find(params[:id])
  end

  def response_params
    params.require(:response).permit(:name,
      responses_attributes: [:name, :_destroy])
  end
