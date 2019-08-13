Rails.application.routes.draw do
  resources :filiais
  root 'ips#index'
  resources :acessos
  resources :ips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
