Rails.application.routes.draw do
  resources :users
  get 'welcome/index'

  #get '/:locale' => 'articles#index'

  #scope "(/:locale)" do
    resources :articles do
      resources :comments
    end
  #end


  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
