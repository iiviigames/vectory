--	ANIMATION.LUA
--	=================================================================

local sprite = {}
sprite.__index = sprite

function sprite.new(sheet)
	local spr = {
		sheet = sheet,
		name = name,
		frames = {},
		frame = 0,
		delay = 0.1,
		play = true,
		elapsed = 0,
		framedelays = {}
	}

	return setmetatable(spr, sprite)
end

function sprite:draw(x, y)
	local quad = self.frames[self.frame]
	if quad then
		Draw(self.sheet.img, quad, x, y)
	end
end

function sprite:update(dt)
	if #self.frames == 0 or not self.play then return end

	--	Add the delta time update to the elapsed time
	self.elapsed = self.elapsed + dt

	if self.elapsed >= self.delay then

		--	Subtract the frame delay from the elapsed time
		self.elapsed = self.elapsed - self.delay

		--	Move to the next frame
		self.frame = self.frame + 1

		--	If this addition would move beyond the final frame,
		--	return to the first frame.
		if self.frame > #self.frames then
			self.frame = 1

		end
	end
end

function sprite:add_frame(col, row)
	local sheet = self.sheet
	local w, h = sheet.w, sheet.h
	local frm = NewFrame((col - 1) * w, (row - 1) * h, w, h, sheet.imgw, sheet.imgh)
	self.frames[#self.frames+1] = frm
	return self
end

function sprite:start()
	self.play = true
end

function sprite:stop(which)
	self.play = false
	self.frame = which or 1
	self.elapsed = 0
end

function sprite:set_delay(s)
	self.delay = s
	return self
end

function sprite:get_delay()
	return self.delay
end

function sprite:paused()
	return self.play == false
end

--	SPRITESHEET
--	====================================

spritesheet = {}
spritesheet.__index = spritesheet

function spritesheet.new(img, w, h)
	if type(img) == 'string' then
		img = NewImage(img)
	end

	local sheet = {
		img = img,
		w = w,
		h = h,
		animations = {}
	}

	sheet.imgw = img:getWidth()
	sheet.imgh = img:getHeight()

	return setmetatable(sheet, spritesheet)
end


function spritesheet:set_animation(...)
	local anim = sprite.new(self)
	return anim
end

return spritesheet