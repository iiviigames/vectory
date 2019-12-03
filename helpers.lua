--	HELPERS.LUA
--	=================================================================

local help = {}

--	Smooth Motion
	---@func 	approach(shift,limit,rate)
	---@arg		{flt}	shift	value to change over time
	---@arg		{flt}	limit	maximum amount the shift can reach
	---@arg		{flt}	rate	incremental value * delta per step
	---@desc	The approach script smoothly moves one value towards
	---				a maximum amount without exceeding that amount.
	---@ret		{flt}	shift	the altered shifting value
function approach(shift,limit,rate)
	if shift < limit then
		shift = shift + rate;

		if shift > limit then
			return limit
		end
	else
		shift = shift - rate;

		if shift < limit then
			return limit
		end
	end

	return shift
end


--	Line Division
	---@func 	div(symbol, newline)
	---@arg		{str}	symbol	string value for a separator to draw on screen
	---@arg		{int}	newline	-1 gives a newline before sep, 1 gives a newline after
	---@desc	Creates a line division in text on screen.
function div(s,nl)
	local s = s or '█'
	local b = '\r'
	local n = nl or 0
	if (nl == -1) then p(b)end
	for i=1, 4 do
		s = s..s
	end
	p(s)
	if (nl == 1) then p(b) end
end


--	Table Print
	---@func 	pt(t)
	---@arg		{tbl}	t		table to print to screen
	---@desc	Prints a table of values to the screen
function pt(t)
	for k,v in pairs(t) do
		print(ts(k)..":		"..ts(v))
	end
end


--	Table Reverse
function reverse(t)
	local nt = {}
	local l = #t + 1
	for k,v in ipairs(t) do
		nt[l - k] = v
	end
	return nt
end


-- Decimal to Binary
function bin(num)
	local t = {}
	local rest
	while num > 0 do
		rest = num % 2
		t[#t + 1] = rest
		num = (num - rest)/2
	end
	t = reverse(t)
	local val = ''
	for i = 1, #t do
		val = val..t[i]
	end
	return tonumber(val)
end

--	Round Up to Nearest Whole
function round(x)
 return flr(x+0.5)
end