class SubmissionsController < ApplicationController
before_action :set_submission, only: [:update, :show]

  def new
    @submission=Submission.new
  end


  def create
    @submission = Submission.new(submission_params)
      if @submission.save
        redirect_to authors_path, notice: 'Response was successfully created.'
      else
        render :new
      end
  end

  def update
  end

  def show

  end

  def index
    @submissions= Submission.where(survey_id: params[:survey_id])
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_submission
    @submission = Submission.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def submission_params
    params.require(:submission).permit(:survey_id,
      responses_attributes: [:id,:name, :submission_id, :question_id])
  end
end
