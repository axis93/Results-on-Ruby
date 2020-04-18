class PlayersController < ApplicationController
	def index
		@players = Player.all
	end

	def show
		@player = Player.find(params[:id])
	end

	def new
		@player = Player.new
	end

	def create
		@player = Player.new(player_params)

		if @player.save
			redirect_to @player
		else
			render 'new'
		end
	end

	def destroy
		@player = Player.find(params[:id])
		@player.destroy

		redirect_to players_path
	end

	private
	def player_params
		params.require(:player).permit(:name, :win, :draw, :lose, 
			:gs, :gt, :dr, :points)
	end
end
