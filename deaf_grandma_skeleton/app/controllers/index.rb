get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :home
end

post '/grandma' do

  if params[:user_input] == (params[:user_input]).upcase
    @grandma = "NOT SINCE 1971!"
  else
    @grandma = "SPEAK UP YA LITTLE SHIT! I CAN'T HEAR YOU!"
  end

  redirect "/?grandma=#{@grandma}"
end
