--	LOAD_ASSETS.LUA
--	=================================================================

function load_monkey()
	local folder = 'img/'
	local filename = 's_mo_stand.png'
	local file = folder..filename
	local frame_width = 59
	local frame_height = 65
	Idle = spritesheet.new(file, frame_width, frame_height)

	selected = 0
	MoAnimations = {}

	-- Loop through the sheet and get the images
	for row = 1, 1 do									-- Y axis
		local a = Idle:set_animation()
		for col = 1, 4 do								--	X axis
			a:add_frame(col, row)
		end
		MoAnimations[#Animations+1] = a
	end

	a = Idle:set_animation()

end