class ArrangingTeachersController < ApplicationController
  
 
    def index
      @arranging_teachers = ArrangingTeacher.all
    end
      

end
  
  