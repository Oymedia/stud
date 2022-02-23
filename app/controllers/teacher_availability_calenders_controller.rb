class TeacherAvailabilityCalendersController < ApplicationController
  before_action :set_teacher_availability_calender, only: %i[ show edit update destroy ]

  # GET /teacher_availability_calenders or /teacher_availability_calenders.json
  def index
    @teacher_availability_calenders = TeacherAvailabilityCalender.all
  end

  # GET /teacher_availability_calenders/1 or /teacher_availability_calenders/1.json
  def show
  end

  # GET /teacher_availability_calenders/new
  def new
    @teacher_availability_calender = TeacherAvailabilityCalender.new
  end

  # GET /teacher_availability_calenders/1/edit
  def edit
  end

  # POST /teacher_availability_calenders or /teacher_availability_calenders.json
  def create
    @teacher_availability_calender = TeacherAvailabilityCalender.new(teacher_availability_calender_params)

    respond_to do |format|
      if @teacher_availability_calender.save
        format.html { redirect_to teacher_availability_calender_url(@teacher_availability_calender), notice: "Teacher availability calender was successfully created." }
        format.json { render :show, status: :created, location: @teacher_availability_calender }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @teacher_availability_calender.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_availability_calenders/1 or /teacher_availability_calenders/1.json
  def update
    respond_to do |format|
      if @teacher_availability_calender.update(teacher_availability_calender_params)
        format.html { redirect_to teacher_availability_calender_url(@teacher_availability_calender), notice: "Teacher availability calender was successfully updated." }
        format.json { render :show, status: :ok, location: @teacher_availability_calender }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @teacher_availability_calender.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_availability_calenders/1 or /teacher_availability_calenders/1.json
  def destroy
    @teacher_availability_calender.destroy

    respond_to do |format|
      format.html { redirect_to teacher_availability_calenders_url, notice: "Teacher availability calender was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_availability_calender
      @teacher_availability_calender = TeacherAvailabilityCalender.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teacher_availability_calender_params
      params.require(:teacher_availability_calender).permit(:techname, :day, :time)
    end
end
