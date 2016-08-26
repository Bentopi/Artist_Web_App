Rails.application.routes.draw do
  root 'welcome#home'
  post 'root' => 'welcome#search', as: :search_artist
  get 'artists' => 'artists#list', as: :artists
  get 'artists/:id' => 'artists#show', as: :artist
end
