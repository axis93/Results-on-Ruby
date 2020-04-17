class ResultsController < ApplicationController
	def index
		@results = Result.all
	end

	def show
		@result = Result.find(params[:id])
	end

	def new
		@result = Result.new
	end

	def create
		@result = Result.new(result_params)

		if @result.save
			redirect_to @result
		else
			render 'new'
		end
	end

	def destroy
		@result = Result.find(params[:id])
		@result.destroy

		redirect_to results_path
	end

	private
		def result_params
			params.require(:result).permit(:name1, :goal1, :name2, :goal2,
				:date, :player_id)
		end

end
