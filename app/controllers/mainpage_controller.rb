class MainpageController < ApplicationController

    def home
        redirect_to student_details_path if logged_in?
    end
end
