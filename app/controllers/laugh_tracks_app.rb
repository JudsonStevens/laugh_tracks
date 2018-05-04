class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.all
    @average_comedian_age = Comedian.average_age

    erb :"comedians/index"
  end

  get '/comedians/:age' do
    @comedians = Comedian.find_comedians_by_age(params[:age])

    erb :"comedians/individual_comedian"
  end

end
