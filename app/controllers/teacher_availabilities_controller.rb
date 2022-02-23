class TeacherAvailabilitiesController < ApplicationController
  before_action :set_teacher_availability, only: %i[ show edit update destroy ]

  # GET /teacher_availabilities or /teacher_availabilities.json
  def index
    @teacher_availabilities = TeacherAvailability.all
  end

  # GET /teacher_availabilities/1 or /teacher_availabilities/1.json
  def show
  end

  # GET /teacher_availabilities/new
  def new
    @teacher_availability = TeacherAvailability.new
  end

  # GET /teacher_availabilities/1/edit
  def edit
  end

  # POST /teacher_availabilities or /teacher_availabilities.json
  def create
    @teacher_availability = TeacherAvailability.new(teacher_availability_params)

    respond_to do |format|
      if @teacher_availability.save
        format.html { redirect_to teacher_availability_url(@teacher_availability), notice: "Teacher availability was successfully created." }
        format.json { render :show, status: :created, location: @teacher_availability }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @teacher_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_availabilities/1 or /teacher_availabilities/1.json
  def update
    respond_to do |format|
      if @teacher_availability.update(teacher_availability_params)
        format.html { redirect_to teacher_availability_url(@teacher_availability), notice: "Teacher availability was successfully updated." }
        format.json { render :show, status: :ok, location: @teacher_availability }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @teacher_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_availabilities/1 or /teacher_availabilities/1.json
  def destroy
    @teacher_availability.destroy

    respond_to do |format|
      format.html { redirect_to teacher_availabilities_url, notice: "Teacher availability was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_availability
      @teacher_availability = TeacherAvailability.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teacher_availability_params
      params.require(:teacher_availability).permit(:tname, :day)
    end
end
