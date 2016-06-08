Rails.application.routes.draw do
  resources :schools do
    resources :courses
    resources :students
  end

  root 'schools#index'

  post "schools/:id/courses/new" => "courses#create"
  patch "schools/:id/courses/:id/edit" => "courses#update"

end