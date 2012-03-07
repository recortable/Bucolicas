Bucolicas::Application.routes.draw do

  match '/' => 'static#elsur'
  match '/remezclas' => 'static#remix'
  match '*path' => redirect('/')
end
