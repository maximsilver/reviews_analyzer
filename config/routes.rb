Rails.application.routes.draw do
  get 'welcome/index'
  get 'product/index'
  get 'user/index'
  get 'word/index'
  get 'review/index'

  root 'welcome#index'
end
