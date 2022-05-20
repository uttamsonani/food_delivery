Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  get 'home/menu'
  get 'home/blog_detail'
  get 'home/blog'
  get 'home/contact'
  get 'home/gallery'
  get 'home/about'
  get 'home/index'
  get 'home/reservation'
  
  # Defines the root path route ("/")
  # root "articles#index"
end
