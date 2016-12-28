Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root "infos#index", as: :root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  resources :infos do
    get 'download_csv', :on => :collection
    #get "import"
    collection { post :import }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
