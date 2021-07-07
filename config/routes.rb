Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, only: [:show, :index]
  # get '/students', to: 'students#index', as: 'students_index'
  # get '/students/:id', to: 'students#show', as: 'student'

  get '/students/:id/activate', to: 'students#activation', as: 'student_active'


end
