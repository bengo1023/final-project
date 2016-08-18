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
    @via_fare="Via fare: $#{via_fare_calculator(@t,@d,params[:day],params[:traffic]).round(2)}"
    @taxi_fare="Taxi fare: $#{nyc_taxi_calculator(@t,@d,params[:day],params[:traffic]).round(2)}"
    @uberX_fare="UberX fare: $#{uberX_fare_calculator(@t,@d,params[:day],params[:traffic]).round(2)}"
    @uberXL_fare="UberXL fare: $#{uberXL_fare_calculator(@t,@d,params[:day],params[:traffic]).round(2)}"
    @uberBlack_fare="UberBlack fare: $#{uberBlack_fare_calculator(@t,@d,params[:day],params[:traffic]).round(2)}"
    @uberSUV_fare="UberSUV fare: $#{uberSUV_fare_calculator(@t,@d,params[:day],params[:traffic]).round(2)}"
    @lyft_standard="Lyft Standard fare: $#{lyft_standard_fare_calculator(@t,@d,params[:day],params[:traffic]).round(2)}"
    @lyft_plus="Lyft Plus fare: $#{lyft_plus_fare_calculator(@t,@d,params[:day],params[:traffic]).round(2)}"
    @lyft_premier="Lyft Premier fare: $#{lyft_premier_fare_calculator(@t,@d,params[:day],params[:traffic]).round(2)}"
    @lyft_line="Lyft Line fare: $#{lyft_line_fare_calculator(@t,@d,params[:day],params[:traffic]).round(2)}"
    erb :results
  end

end