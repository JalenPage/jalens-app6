require 'sinatra'
require 'holidapi'

class GreatestHolidayApp < Sinatra::Base
	
	get '/' do
		@holidays = HolidApi.get(country: 'us', month: Time.now.month)
		@holidays2 = HolidApi.get(country: 'us', month: 5, year: 1992)
		erb :index2
	end	

end