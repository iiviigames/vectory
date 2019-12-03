--	Vectory by iivii
--	@odd_codes |	https://odd.codes |	https://merveilles.town/theLibrarian
--	=================================================================
-- -------------	--
--	REQUIREMENTS
-- -------------	--
require 'shorthand'
require 'globals'
require 'helpers'
require 'display'
require 'animation'
require 'load_assets'

function love.load()
	init_scale(3)
	--	Try Loading Mo
	load_monkey()
end

function love.update(dt)

  for k,v in ipairs(MoAnimations) do v:update(dt) end

end	

function love.draw()
	love.
	love.graphics.scale(2, 2)
	for k,v in ipairs(MoAnimations) do
		-- v:draw(k * frame_width, 0)
		v:draw(100, 100)
	end

end