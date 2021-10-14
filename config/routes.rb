Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/query_name" => "pages#name"

  get "/first_letter" => "pages#first_letter"

  get "/guess_number" => "pages#guess_number"

  get "/sum_numbers/:number1/:number2" => "pages#addition"

  get "/guess_number/:number" => "pages#guess_number"
end
