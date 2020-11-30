Rails.application.routes.draw do
  resources :providers do
    resources :pixels, except: [:create] do
      patch :convert_pixel
    end
    collection do
      post :create_pixel, controller: :providers
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
