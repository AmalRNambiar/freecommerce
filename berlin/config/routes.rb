# frozen_string_literal: true

Rails.application.routes.draw do
  use_doorkeeper
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :authentication
    end
  end
end
