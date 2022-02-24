Rails.application.routes.draw do
  get 'teacher_registration_forms/index'
  resources :teacher_availabilities
  resources :teacher_availability_calenders
 
  resources :student_details
  resources :teacher_registration_forms
  #, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  root 'student_details#index'
  resources :arranging_teachers
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
 
# get 'student_details/index'
 # get 'index', to: 'student_details#index'
 


  #get 'new', to: 'student_details#new'
  # get 'student_details/create' 
   #get update, to: 'student_details/update'

  
  #get 'show', to: 'student_details/#show'
  #get 'student_details/edit'
  #get 'student_details/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
