require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end
  
  #GET /multiply/:num1/:num2 displays the product of 2 numbers in the route
  get "/multiply/:num1/:num2" do
    @product = params[:num1] * params[:num2]
    "The product is #{@product}"
  end
  
end