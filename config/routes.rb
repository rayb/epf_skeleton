EpfSkeleton::Application.routes.draw do

  root :to => 'application#index'
  resources :foos
  resources :bars

end
