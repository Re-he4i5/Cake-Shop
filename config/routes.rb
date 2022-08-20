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
  end

  scope module: :public do
    root 'homes#top'
    get 'about' => 'homes#about' ,as: 'about'
    get 'customers/my_page' => 'customers#show', as: 'my_page'
  end
end
