require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

 
 
  get '/' do
    erb :index
  end

  post '/' do
    final_school_time=params[:school_time]
    final_get_ready_time=params[:get_ready_time]
    @mvp_method=rise_and_shine_mvp_conditional(final_school_time,final_get_ready_time)
    erb :results
  end 
end