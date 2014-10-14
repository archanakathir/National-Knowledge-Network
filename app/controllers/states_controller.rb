class StatesController < ApplicationController
	def index
		@state_names = State.all
	end
end
