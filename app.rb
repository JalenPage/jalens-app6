require 'sinatra'
require 'holidapi'

class GreatestHolidayApp < Sinatra::Base
	
	get '/' do
		params['month'] ||= Time.now.month
		params['day'] ||= Time.now.day
		params['year'] ||= Time.now.year
		@holidays = HolidApi.get(month: params['month'], day: params['day'], year: params['year'])
		erb :index3
	end	
end