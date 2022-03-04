Rails.application.routes.draw do
  get 'teacher_registration_forms/index'
  resources :teacher_availabilities
  resources :teacher_availability_calenders
 
  resources :student_details
  get 'teacher_registration_forms', to: 'teacher_registration_forms#new'
  #resources :teacher_registration_forms
  #, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  root 'mainpage#home'
  resources :arranging_teachers
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
 
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
 
end
