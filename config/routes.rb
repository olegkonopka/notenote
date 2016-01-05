Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :notes
   root 'welcome#index'

authenticated :user do
root 'notes#index', as: "authenticated_root"
end

end
