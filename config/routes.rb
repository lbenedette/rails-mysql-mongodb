Rails.application.routes.draw do
  post 'events.logs' => 'events#log'
  get 'events.logs' => 'events#show'
end
