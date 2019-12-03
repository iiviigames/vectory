--	OBJOR.LUA
--	====================================================================

--	Class Table
local class = {}
class.__index = class;

setmetatable(class, {
	__call = function(_class,...)
		return _class.new(...)
	end,
})

function class.new(init)
	local self = setmetatable({},class)
	self.value = init
	return self
end

function class:set_value(newval)
	self.value = newval
end

function class:get_value()
	return self.value
end
