Rails.application.routes.draw do
  devise_for :users
  root to: "article#index"
  get "/create_article", to: "article#create_article", as: :article
  get "/edit_article/:id", to: "article#edit", as: :edit_article
  patch "/edit_article/:id", to: "article#update"
  get "/detail/:id", to: "article#detail", as: :article_detail
  post "/create_article", to: "article#create_article_post"
end
