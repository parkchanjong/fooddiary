Rails.application.routes.draw do
  get 'welcome/index'

  resources :diaries  # restful api 설정  diary 와 구분 되있음 단수x
    

  root 'welcome#index'
  #실제 페이지 위치 rails에 설정
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
