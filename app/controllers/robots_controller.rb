class RobotsController < ApplicationController
	
	def index
		@robots = Robot.all
	end

	def new

	end

	def create
		@robot = Robot.new(robot_params)

		@robot.save
		redirect_to @robot
	end

	def show
		@robot = Robot.find(params[:id])
	end

	def edit
		@robot = Robot.find(params[:id])
	end

	def update	
		@robot = Robot.find(params[:id])
		@robot.update(robot_params)
		redirect_to @robot
	end

	def destroy
		@robot = Robot.find(params[:id])
  		@robot.destroy
 		redirect_to robots_path
	end

	private
		def robot_params
			params.require(:robot).permit(:name, :info)
		end
end
