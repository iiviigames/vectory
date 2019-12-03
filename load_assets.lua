--	LOAD_ASSETS.LUA
--	=================================================================
require 'animation'
function load_monkey()
	local folder = 'img/'
	local filename = 's_mo_stand.png'
	local file = folder..filename
	frame_width = 59
	frame_height = 65
	Idle = spritesheet.new(file, frame_width, frame_height)

	selected = 0
	MoAnimations = {}

	-- Loop through the sheet and get the images
	for row = 1, 1 do									-- Y axis
		local a = Idle:set_animation()
		for col = 1, 4 do								--	X axis
			a:add_frame(col, row)
		end
		MoAnimations[#MoAnimations+1] = a
	end

	a = Idle:set_animation()

end