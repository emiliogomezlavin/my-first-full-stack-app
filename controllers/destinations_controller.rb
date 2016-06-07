class Travelution < Sinatra::Base

  # RESTful Destination Controller Actions
  # index
  get '/destinations' do
    # @artists = Artist.all
    # erb(:"artists/index")
  end

  # new
  get '/destinations/new' do
    # @artist = Artist.new
    erb(:"destinations/new")
  end

  # create
  post '/destinations' do
    # @artist = Artist.new(params[:artist])
    # if @artist.save
    #   redirect("/artists/#{@artist.id}")
    # else
    #   erb(:"artists/new")
    # end
  end

  # show
  get '/destinations/:id' do
    # @artist = Artist.find(params[:id])
    # erb(:"artists/show")
  end

  # edit
  get '/destinations/:id/edit' do
    # @artist = Artist.find(params[:id])
    # erb(:"artists/edit")
  end

  # update
  put '/destinations/:id' do
    # @artist = Artist.find(params[:id])
    # if @artist.update_attributes(params[:artist])
    #   redirect("/artists/#{artist.id}")
    # else
    #   erb(:"artists/edit")
    # end
  end

  # delete
  delete '/destinations/:id/delete' do
    # @artist = Artist.find(params[:id])
    # if @artist.destroy
    #   redirect('/artists')
    # else
    #   redirect("/artists/#{@artist.id}")
    # end
  end

end
