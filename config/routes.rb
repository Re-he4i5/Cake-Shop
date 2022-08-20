Rails.application.routes.draw do
  devise_for :admin,skip: [:registrations, :passwords], controllers: {
    sessions: 'admin/sessions',
  }

  devise_for :customers,skip: [:passwords], controllers: {
    sessions: 'public/sessions',
    registrations: 'public/registrations',
  }

  namespace :admin do
    root 'homes#top', as: 'top'
    resources :customers, only: [:index]
    resources :items
    resources :genres
    resources :orders, only: [:show, :update]
    resources :order_details, only: [:update]
  end

  scope module: :public do
    root 'homes#top'
    get 'about' => 'homes#about' ,as: 'about'
    get 'customers/my_page' => 'customers#show', as: 'mypage'
    get 'customers/information/edit' => 'customers#edit', as: 'edit_information'
    patch 'customers/information' => 'customers#update', as: 'update_information'

    get 'customers/unsubscribe' => 'customers#unsubscribe', as: 'confirm_unsubscribe'
    patch 'customers/withdraw' => 'customers#withdraw', as: 'withdraw_customer'

    resources :items, only: [:index, :show]
    resources :cart_items
    resources :addresses
    resources :orders

  end
end
