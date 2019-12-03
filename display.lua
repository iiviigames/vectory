--	DISPLAY.LUA
--	=================================================================

function init_scale(val)
	gameSCALE = val
	gameWIDTH = gameWIDTH * gameSCALE
	gameHEIGHT = gameHEIGHT * gameSCALE
	window(gameWIDTH, gameHEIGHT)
end
