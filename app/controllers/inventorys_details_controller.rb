class InventorysDetailsController < ApplicationController
	
def index
		@state_names = State.all
	
	end
end
