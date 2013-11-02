class DoorstateController < ApplicationController
	def index
		# So that the view can see the door state
		@doorstate = get_door_state()
	end
	
	private
	
	# Get output of the door state sensor
	# returns: 0 if closed, 1 if open, -1 if there was a sensor error
	def get_door_state
		# the gpio command outputs numbers to stdout based on gpio state
		output = `gpio read 0`
		
		# set the state based on the string we got
		if output == "0\n"
			state = 1;
		elsif output == "1\n"
			state = 0;
		# there was a string we didn't expect
		else
			state = -1;
		end
		
		return state
	end
end
