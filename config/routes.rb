Rails.application.routes.draw do
  root 'file_browser#index'
  get 'goto/:dirname', to: 'file_browser#goto'
end
