Rails.application.routes.draw do
  root "chats#show"
  resources :messages, only: [:create]
  get "/:slug", to: "chats#show"
  get "/auth/:provider/callback", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  # namespace :orgaization, path: "/:slug" do
    # get "/", to: "chat#show"
  # end
end
