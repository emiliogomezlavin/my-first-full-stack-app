class Travelution < Sinatra::Base

  
  # index by newest on top
  get '/destinations' do
    @destinations = Destination.all.order(id: :desc)
    erb(:"destinations/index")
  end

  # index by newest on top
  get "/destinations" do
    @destinations = Destination.all.order(name: :asc)
    erb (:"destinations/index")
  end

  # index by newest on top
  get "/destinations" do
    @destinations = Destination.all.order(country: :asc)
    erb (:"destinations/index")
  end

  # new
  get '/destinations/new' do
    @destination = Destination.new
    erb(:"destinations/new")
  end

  # create
  post '/destinations' do
    dest_params = params[:destination]
    dest_params[:country] = dest_params[:country].split.map(&:capitalize).join(" ")
    @destination = Destination.new(dest_params)

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

  #search
  post '/destinations/search' do
    puts params[:query]
    @destinations = Destination.search(params[:query])
    erb(:"destinations/index")
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
