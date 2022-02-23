class StudentDetailsController < ApplicationController
  
 
  def index
    @student_details = StudentDetail.all
  end
    
    def show
      @student_detail = StudentDetail.find(params[:id])  
     end


    def new 
      @student_detail = StudentDetail.new
    end

    def create
      @student_detail = StudentDetail.new(student_detail_params)
 
      if @student_detail.save
        redirect_to @student_detail, notice: 'Student Details was created successfully'
      else
        render :new, status: :unprocessable_entity      
      end
    end


      def edit
        @student_detail = StudentDetail.find(params[:id])
        
      end

      def update
        @student_detail = StudentDetail.find(params[:id])
       
        if @student_detail.update(student_detail_params)
           redirect_to @student_detail, notice: 'Student Details was updated successfully'
          else
            render :edit, status: :unprocessable_entity
        end
      end
      def destroy
       
        @student_detail = StudentDetail.find(params[:id])
        @student_detail.destroy
        puts "This is really strange"
          redirect_to student_details_path
      end
end

private
  def student_detail_params
    params.require(:student_detail).permit(:student_name, :parent_name, :student_class, :syllabus, :subject, :phone_no, :email_id, :course_duration, :reference)
  end

