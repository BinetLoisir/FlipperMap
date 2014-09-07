Rails.application.routes.draw do
  root 'map#map'
  get 'info' => 'map#info'
  get 'pinballs' => 'map#pinballs'
  get 'contact' => 'map#contact'

  get 'admin' => 'admin#pinballs'
end
