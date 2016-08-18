require 'bundler'
Bundler.require
require_relative 'models/uber-fare-calculator.rb'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/calculate' do
#     binding.pry
    @t = params[:time].to_f
    @d = params[:distance].to_f
    @via_fare="Via fare: $#{via_fare_calculator(@t,@d,params[:day],params[:traffic])}"
    @taxi_fare="Taxi fare: $#{nyc_taxi_calculator(@t,@d,params[:day],params[:traffic])}"
    erb :results
  end

end