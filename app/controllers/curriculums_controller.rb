class CurriculumsController < ApplicationController
  before_action :set_curriculum, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /curriculums
  # GET /curriculums.json
  def index
    @q = Curriculum.ransack(params[:q])
    @curriculums = @q.result
  end

  # GET /curriculums/1
  # GET /curriculums/1.json
  def show
    @curriculum = Curriculum.friendly.find(params[:id])
    @comment = Comment.new
    @comments = @curriculum.comments
  end

  # GET /curriculums/new
  def new
    @curriculum = Curriculum.new
  end

  # GET /curriculums/1/edit
  def edit
  end

  # POST /curriculums
  # POST /curriculums.json
  def create
    @curriculum = Curriculum.new(curriculum_params)
    @curriculum.user_id = current_user.id

    respond_to do |format|
      if @curriculum.save
        format.html { redirect_to @curriculum, notice: 'Curriculum was successfully created.' }
        format.json { render :show, status: :created, location: @curriculum }
      else
        format.html { render :new }
        format.json { render json: @curriculum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curriculums/1
  # PATCH/PUT /curriculums/1.json
  def update
    authorize @curriculum
    respond_to do |format|
      if @curriculum.update(curriculum_params)
        format.html { redirect_to @curriculum, notice: 'Curriculum was successfully updated.' }
        format.json { render :show, status: :ok, location: @curriculum }
      else
        format.html { render :edit }
        format.json { render json: @curriculum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curriculums/1
  # DELETE /curriculums/1.json
  def destroy
    authorize @curriculum
    @curriculum.destroy
    respond_to do |format|
      format.html { redirect_to curriculums_url, notice: 'Curriculum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_curriculum
    @curriculum = Curriculum.friendly.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def curriculum_params
    params.require(:curriculum).permit(:title, :content, :user_id, :image, {files: []}, :grade, :subject)
  end
end
