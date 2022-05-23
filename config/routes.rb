Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  get 'home/menu', as: :menu
  get 'home/blog_detail', as: :blog_detail
  get 'home/blog', as: :blog
  get 'home/contact', as: :contact
  get 'home/gallery', as: :gallery
  get 'home/about', as: :about
  get 'home/index', as: :index
  get 'home/reservation', as: :reservation
  
  # Defines the root path route ("/")
  # root "articles#index"
end
