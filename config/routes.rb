Rails.application.routes.draw do
  
  
	devise_for :users, controllers: { registrations: 'users/registrations' }

	
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: "home#index"
get "home/cgu", to: "home#cgu", as: "cgu"
  resources :home
  
  resources :categories 
    resources :users

 get 'contact-me', to: 'contacts#new', as: 'new_contact'
  post 'contact-me', to: 'contacts#create', as: 'create_contact'
  
  
  resources :admins ,only: [:index,:show]
  resources :posts do
  	resources :comments, module: :posts



  end
    get "/404", to: "errors#not_found", via: :all
  get "/422", to: "errors#unacceptable", via: :all
get "/500", :to => "errors#internal_server_error", via: :all

constraints(host: /^(?!www\.)/i) do
  get '(*any)' => redirect { |params, request|
    URI.parse(request.url).tap { |uri| uri.host = "www.#{uri.host}" }.to_s
  }
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
