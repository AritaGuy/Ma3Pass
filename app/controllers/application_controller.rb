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

#   # get all bookings
#   get '/bookings' do
#       Booking.all.to_json
#   end

#   # get one booking
#   get '/bookings/:id' do
#       Booking.find(params[:id]).to_json
#   end

  # get all passengers
  get '/passengers' do
      Passenger.all.to_json
  end

  # get one passenger
  get '/passenger/:id' do
      Booking.find(params[:id]).to_json
  end

  # get all trips
  get '/trips' do
      Trip.all.to_json
  end

  # get one trip
  get '/trip/:id' do
      Trip.find(params[:id]).to_json
  end


  # crud for todo_lists ==================================


#   # create
#   post '/todo_list' do
#       todo_list = TodoList.create(
#           title: params[:title],
#           description: params[:description],
#           category_id: params[:category_id],
#           status: false
#       )
#       todo_list.to_json
#   end

    # CREATE BOOKING
    post '/booking' do
        booking = Booking.create(
            ticket_no: params[:ticket_no],
            matatu_id: params[:matatu_id],
            passenger_id: params[:passenger_id],
            trip_id: params[:trip_id]
        )
        booking.to_json
    end

    # READ ALL BOOKINGS
    get '/bookings' do
        Booking.all.to_json(include: :passenger)
    end


#   # read
#   get '/todo_lists' do
#       TodoList.all.to_json(include: :category)
#   end

#   # get one todo_list
#   get '/todo_list/:id' do
#       TodoList.find(params[:id]).to_json(include: :category)
#   end

#   # update
#   patch '/todo_list/:id' do
#       todo_list = TodoList.find(params[:id])
#       todo_list.update(
#           title: params[:title],
#           description: params[:description],
#           category_id: params[:category_id],
#           status: params[:status]
#       )
#       {message: "Todo list updated!"}.to_json
#   end

#   # delete
#   delete '/todo_list/:id' do
#       todo_list = TodoList.find(params[:id])
#       todo_list.destroy
#       {message: "Todo List '#{todo_list.title}' has been deleted."}.to_json
#   end



  # abit of advanced stuffs huhh 😎 ===============================


#   # get all todo_lists of a category
#   get '/category/:id/todo_lists' do
#       Category.find(params[:id]).todo_lists.to_json(include: :category)
#   end

#   # get all todo_lists of a category that are not completed
#   get '/category/:id/todo_lists/active' do
#       Category.find(params[:id]).todo_lists.where(status: false).to_json(include: :category)
#   end

#   # get all todo_lists of a category that are completed
#   get '/category/:id/todo_lists/completed' do
#       Category.find(params[:id]).todo_lists.where(status: true).to_json(include: :category)
#   end

end