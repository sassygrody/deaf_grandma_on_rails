class PagesController < ApplicationController
	def index    #look to routes, sinatra GET route for index
		@grandma = params[:grandma]
	end


	def grandma
	    user_input = params[:user_input]

	    grandma_cannot_hear = ["Huh?", "Speak up, child!", "WHAT?"]
	    if user_input == user_input.downcase
	      @grandma = grandma_cannot_hear.sample
	    else
	       @grandma = "Oh no, not since 1976."
	    end

         redirect_to root_path(:grandma => @grandma)

 	  # render :index

  	end
end


