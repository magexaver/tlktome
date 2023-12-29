# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get 'pages/index'

  get 'up' => 'rails/health#show', as: :rails_health_check

  resources :events
end
