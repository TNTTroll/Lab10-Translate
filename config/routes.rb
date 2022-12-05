Rails.application.routes.draw do
  root 'newton#input'
  post 'newton/result'
end
