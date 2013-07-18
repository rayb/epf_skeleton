require 'api_constraints'

EpfSkeleton::Application.routes.draw do

  root :to => 'application#index'

  namespace :api, defaults: {format: "json"} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: :true) do

      resources :foos
      resources :bars

    end
  end

end
