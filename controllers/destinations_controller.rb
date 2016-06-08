class Travelution < Sinatra::Base

  
  # index
  get '/destinations' do
    @destinations = Destination.all
    erb(:"destinations/index")
  end

  # new
  get '/destinations/new' do
    @destination = Destination.new
    erb(:"destinations/new")
  end

  # create
  post '/destinations' do
    @destination = Destination.new(params[:destination])
    if @destination.save
      redirect("/destinations/#{@destination.id}")
    else
      erb(:"destinations/new")
    end
  end

  # show
  get '/destinations/:id' do
    @destination = Destination.find(params[:id])
    erb(:"destinations/show")
  end

  # edit
  get '/destinations/:id/edit' do
    @destination = Destination.find(params[:id])
    erb(:"destinations/edit")
  end

  # update
  post '/destinations/:id' do
    @destination = Destination.find(params[:id])
    if @destination.update_attributes(params[:destination])
      redirect("/destinations/#{@destination.id}")
    else
      erb(:"destinations/edit")
    end
  end

  # delete
  post '/destinations/:id/delete' do
    @destination = Destination.find(params[:id])
    if @destination.destroy
      redirect('/destinations')
    else
      redirect("/destinations/#{@destination.id}")
    end
  end

end
