Rails.application.routes.draw { resources :contacts, only: [:create] }
