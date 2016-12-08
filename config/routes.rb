Rails.application.routes.draw do
  resources :infos do
    get 'download_csv', :on => :collection
    #get "import"
    collection { post :import }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "infos#index"
end
