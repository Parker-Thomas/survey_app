class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy, :take_survey, :submit_responses]
  before_action :authenticate_user, except: [:show]

  # GET /surveys
  # GET /surveys.json
  def index
    @surveys = Survey.all
  end

  # GET /surveys/1
  # GET /surveys/1.json
  def show
    @submission = Submission.new
    @submission.responses.build
    @response = Response.new

  end

  # GET /surveys/new
  def new
    @survey = Survey.new
    @survey.questions.build
  end

  # GET /surveys/1/edit
  def edit
    @survey.questions.build
  end

  # GET
  def take_survey

  end

  # POST
  def submit_responses
    # puts '----------'
    # puts params
    # puts '----------'
    # puts params["responses"]
    # puts '----------'

    submission = Submission.create
    @survey.questions.each do |q|
      Response.create!(question_id: q.id,  submission_id: submission.id, name: params[:responses][q.id.to_s]  )
    end
    redirect_to authors_path
  end

  # GET
#def edit_questions
  #end
#
  ## POST
  #def update_questions
  #  @survey.questions = []
  #  params[:questions].keys.each do |question_id|
  #    @survey.questions << Question.find_by_id(question_id)
  #  end
  #  redirect_to edit_questions_survey_path
  #end

  # POST /surveys
  # POST /surveys.json
  def create
    @survey = Survey.new(survey_params)
    @survey.author_id = @current_user.id
    respond_to do |format|
      if @survey.save
        format.html { redirect_to @survey, notice: 'Survey was successfully created.' }
        format.json { render :show, status: :created, location: @survey }
      else
        format.html { render :new }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surveys/1
  # PATCH/PUT /surveys/1.json
  def update
    respond_to do |format|
      if @survey.update(survey_params)
        format.html { redirect_to authors_path, notice: 'Survey was successfully updated.' }
      else
        format.html { render :edit }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surveys/1
  # DELETE /surveys/1.json
  def destroy
    @survey.destroy
    respond_to do |format|
      format.html { redirect_to surveys_url, notice: 'Survey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      params.require(:survey).permit(:title, :description, :author_id,
        questions_attributes: [:id, :text, :description, :question_type_id, :_destroy])
    end
end
