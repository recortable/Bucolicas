Bucolicas::Application.routes.draw do

  match '/' => 'static#elsur'
  match '*path' => redirect('/')
end
