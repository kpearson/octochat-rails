Rails.application.routes.draw do
  root "chats#show"
  resources :messages, only: [:create]
  get "/:slug", to: "chats#show"


  # namespace :orgaization, path: "/:slug" do
    # get "/", to: "chat#show"
  # end
end
