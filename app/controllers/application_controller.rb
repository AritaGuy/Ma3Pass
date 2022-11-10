class ApplicationController < Sinatra::Base

  set :default_content_type, "application/json"

  # allow access-control-allow-origin header on all requests
  before do
      response.headers["Access-Control-Allow-Origin"] = "*"
  end

  # enable CORS preflight requests
  options "*" do
      response.headers["Access-Control-Allow-Methods"] = "GET, POST, PUT, PATCH, DELETE, OPTIONS"
  end
  
  get '/' do
      {hello: "Testing Ma3pass homepage"}.to_json
  end

  # get all matatus
  get '/matatus' do
      Matatu.all.to_json
  end

  # get one matatu
  get '/matatu/:id' do
      Matatu.find(params[:id]).to_json
  end

  # get all passengers
  get '/passengers' do
      Passenger.all.to_json
  end


  # get one passenger
  get '/passenger/:id' do
      Passenger.find(params[:id]).to_json
  end

  # get all trips
  get '/routes' do
      Route.all.to_json
  end

  # get one trip
  get '/route/:id' do
      Route.find(params[:id]).to_json
  end


    # CREATE a booking
    post '/booking' do
        booking = Booking.create(
            ticket_no: params[:ticket_no],
            matatu_id: params[:matatu_id],
            passenger_id: params[:passenger_id],
            trip_id: params[:trip_id]
        )
        booking.to_json
    end
        
    # READ ALL bookings
    get '/bookings' do
        # booking = Booking.find(params[:id])

        # booking.
        Booking.all.to_json(only: [:id, :ticket_no], 
                        include: { passenger: {only: [:id, :name, :phone], 
                        include: { trips: {only: [:id, :departure, :destination, :time, :price], 
                        include: { matatus: {only: [:id, :sacco, :reg_no]}}}}}}
                        )
    end

    #  READ ONE booking
    get '/booking/:id' do
        Booking.find(params[:id]).to_json(only: [:id, :ticket_no], 
                                        include: { passenger: {only: [:id, :name, :phone], 
                                        include: { trips: {only: [:id, :departure, :destination, :time, :price], 
                                        include: { matatus: {only: [:id, :sacco, :reg_no]}}}}}}
                                        )
    end

    # DELETE ONE booking
    delete '/booking/:id' do
        booking = Booking.find(params[:id])
        booking.destroy
        {message: "Booking ticket number #{booking.ticket_no} has been deleted!"}.to_json
    end

end

