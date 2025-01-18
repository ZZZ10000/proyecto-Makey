Rails.application.routes.draw do
  # Configuración de Devise para autenticación de usuarios
  devise_for :users

  # Páginas estáticas con rutas limpias
  get "about", to: "pages#about", as: :about
  get "contact", to: "pages#contact", as: :contact

  # Rutas de contenido con todas las acciones CRUD
  resources :contents

  # Ruta raíz (home principal)
  root "pages#home"
end
