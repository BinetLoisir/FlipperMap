Rails.application.routes.draw do
  root 'map#map'
  get 'info' => 'map#info'
  get 'pinballs' => 'map#pinballs'
  get 'contact' => 'map#contact'

  get 'admin' => 'admin#pinballs'

  protected_app = Rack::Auth::Basic.new(Upmin::Engine) do |username, password|
    username == 'zde' && password == 'plap'
  end
  mount protected_app  => '/upmin'

end
