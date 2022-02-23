class TeacherRegistrationFormsController < ApplicationController
  def index
    @teacher_registration_forms = TeacherRegistrationForm.all
  end

  def show
    @teacher_registration_form = TeacherRegistrationForm.find(params[:id])
  end

end
