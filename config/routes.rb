WenwerApp::Application.routes.draw do
  
get '/' => 'Wenwer#index'

get '/add_event' => 'Wenwer#add_event', :as => :events
post '/add_event' => 'Wenwer#input_event'

get 'detail/:id' => 'Wenwer#detail'
delete 'detail/:id' => 'Wenwer#delete'
post 'detail/:id' => 'Wenwer#update'

get 'detail/:id/edit' => 'Wenwer#edit'

  
  
end
