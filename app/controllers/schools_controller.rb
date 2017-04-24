class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy, :add_teacher]

  # GET /schools
  # GET /schools.json
  def index
    @q = School.ransack(params[:q])
    @schools = @q.result(distinct: true)  end

  # GET /schools/1
  # GET /schools/1.json
  def show
  end

  # PUTS /schools/1/add_teacher
  def add_teacher
    self.school_teachers.create(:user => current_user)

    redirect_to @school

    # respond_to do |format|
    #   if @school.save
    #     format.html { redirect_to @school, notice: "You were added to the teacher list for #{@school.name}" }
    #     format.json { render :show, status: :created, location: @school }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @school.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # GET /schools/new
  def new
    @school = School.new
  end

  # GET /schools/1/edit
  def edit
  end

  # POST /schools
  # POST /schools.json
  def create
    @school = School.new(school_params)
    @school.user_id = current_user.id
    @school.teacher_list.push(@school.user.email.to_s)

    respond_to do |format|
      if @school.save
        format.html { redirect_to @school, notice: 'School was successfully created.' }
        format.json { render :show, status: :created, location: @school }
      else
        format.html { render :new }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schools/1
  # PATCH/PUT /schools/1.json
  def update
    authorize @school

    respond_to do |format|
      if @school.update(school_params)
        format.html { redirect_to @school, notice: 'School was successfully updated.' }
        format.json { render :show, status: :ok, location: @school }
      else
        format.html { render :edit }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schools/1
  # DELETE /schools/1.json
  def destroy
    authorize @school

    @school.destroy
    respond_to do |format|
      format.html { redirect_to schools_url, notice: 'School was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school
      @school = School.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_params
      params.require(:school).permit(:name, :location, :grade_low, :grade_high, :user_id, :curriculum_list, :teacher_list, :image)
    end
end
