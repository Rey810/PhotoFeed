Rails.application.routes.draw do
  root 'staticpages#home'
  get 'staticpages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
