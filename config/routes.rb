Rails.application.routes.draw do
  get 'map/sample'
  get 'map/sample2'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'map#sample'
end
