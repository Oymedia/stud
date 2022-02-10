Rails.application.routes.draw do
  resources :student_details
  #, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  root 'student_details#index'
 
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
