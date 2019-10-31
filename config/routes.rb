Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resource :applies
      resources :jobs do
        resource :applies
      end
      resources :companies do
        resources :jobs
      end
      resource :geeks do
        resource :applies
      end
    end
  end

  match "*path", to: "application#catch_404", via: :all

end
