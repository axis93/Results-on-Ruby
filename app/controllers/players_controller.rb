class PlayersController < ApplicationController
	def new
	end

	def create
		render plain: params[:players].inspect
	end
end
