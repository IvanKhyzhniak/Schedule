Rails.application.routes.draw do
 
  get 'groups/index'

  get 'subjects/index'

  root 'faculties#index'
  
  get "faculties",             to: "faculties#index"
  get "faculties/:id/courses", to: "courses#index",  as: "courses"
  get "courses/:id/groups",    to: "groups#index",   as: "groups"
  get "groups/:id/subjects",   to: "subjects#index", as: "subjects"

  resources :subjects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
