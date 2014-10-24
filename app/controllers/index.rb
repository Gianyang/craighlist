get '/' do
  # Look in app/views/index.erb
  @category = Category.all
  erb :index
end


get '/categories/:id' do
  @category = Category.find(params[:id])

  erb :categories
end

post '/' do



end