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
      if @response.save
        submission=Submission.new
        survey_id=Question.find(@response.question_id).survey.id
        submission.survey_id= survey_id
        submission.save
        @response.submission_id= submission.id
        @response.save
        redirect_to @response, notice: 'Response was successfully created.'
      else
        render :new
      end
  end

  def destroy
  end

end

private



  def response_params
    params.require(:response).permit(:name, :survey_id, :question_id)
  end
