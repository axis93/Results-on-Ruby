class ResultsController < ApplicationController

	def index
		@result = Result.all
	end

	def new
		@result = Result.new
	end

	def show
		@result = Result.find(params[:id])
	end

	def create
		@result = Result.new(result_params)

		if @result.save
			redirect_to @result
		else
			render 'new'
		end
	end

	private
		def result_params
			params.require(:result).permit(:name1, :goal1, :name2, :goal2,
				:date)
		end

end
